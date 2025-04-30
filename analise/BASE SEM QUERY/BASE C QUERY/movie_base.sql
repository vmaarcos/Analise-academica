-- 1. Como você pega todos os dados dos filmes?
SELECT * FROM movies;

-- 2. Como você pega todos os dados sobre os diretores?
SELECT * FROM directors;

-- 3. Quantos filmes temos na DB?
SELECT COUNT(*) AS total_movies FROM movies;

-- 4. O diretor se chama Steven Spielberg ou Speilberg? Como encontrar ele na base?
SELECT * FROM directors WHERE name LIKE '%Steven Spielberg%';

-- 5. Encontre todos os diretores que comecem com Steven!
SELECT * FROM directors WHERE name LIKE 'Steven%';

-- 6. Encontre todos os diretores que comecem com a letra T!
SELECT * FROM directors WHERE name LIKE 'T%';

-- 7. Encontre todos os diretores que comecem com a letra W!
SELECT * FROM directors WHERE name LIKE 'W%';

-- 8. Como você sabe o gênero de cada diretor(a)?
SELECT name, gender FROM directors;

-- 9. Quantos diretores homens existem na base?
SELECT COUNT(*) AS male_directors FROM directors WHERE gender = 'male';

-- 10. Quais colunas são chave primária da tabela movies?
SHOW KEYS FROM movies WHERE Key_name = 'PRIMARY';

-- 11. Quantas diretoras mulheres existem na base?
SELECT COUNT(*) AS female_directors FROM directors WHERE gender = 'female';

-- 12. Quais são as 10 primeiras diretoras em ordem alfabética?
SELECT * FROM directors WHERE gender = 'female' ORDER BY name ASC LIMIT 10;

-- 13. Como ordenar todos os nomes de diretores em ordem alfabética?
SELECT name FROM directors ORDER BY name ASC;

-- 14. Como ordenar só os nomes das diretoras?
SELECT name FROM directors WHERE gender = 'female' ORDER BY name ASC;

-- 15. Qual é o filme com maior nota?
SELECT * FROM movies ORDER BY rating DESC LIMIT 1;

-- 16. Qual é o filme com menor nota?
SELECT * FROM movies ORDER BY rating ASC LIMIT 1;

-- 17. Qual foi o primeiro filme lançado da base?
SELECT * FROM movies ORDER BY release_date ASC LIMIT 1;

-- 18. Qual foi o último filme lançado da base?
SELECT * FROM movies ORDER BY release_date DESC LIMIT 1;

-- 19. Qual é a nota média dos filmes?
SELECT AVG(rating) AS average_rating FROM movies;

-- 20. Quais são os top 10 filmes com maior nota?
SELECT * FROM movies ORDER BY rating DESC LIMIT 10;

-- 21. Qual o filme com maior nota lançado depois de 01/01/2000?
SELECT * FROM movies WHERE release_date > '2000-01-01' ORDER BY rating DESC LIMIT 1;

-- 22. Qual o filme com maior nota lançado depois de 01/01/2000 e nota maior que 8?
SELECT * FROM movies WHERE release_date > '2000-01-01' AND rating > 8 ORDER BY rating DESC LIMIT 1;

-- 23. Quais são os 3 filmes com maior número de votos?
SELECT * FROM movies ORDER BY vote_count DESC LIMIT 3;

-- 24. Quais são os 3 filmes mais populares?
SELECT * FROM movies ORDER BY popularity DESC LIMIT 3;

-- 25. Quantos filmes não têm tagline (slogan)?
SELECT COUNT(*) FROM movies WHERE tagline IS NULL OR tagline = '';


