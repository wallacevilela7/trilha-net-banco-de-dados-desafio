use Filmes;
 
SELECT Nome, Ano from Filmes;

SELECT Nome, Ano from Filmes ORDER BY Ano;

SELECT Nome, Ano, Duracao from Filmes where Nome = 'De volta para o Futuro';

SELECT Nome, Ano, Duracao from Filmes where Ano = 1997;

SELECT Nome, Ano, Duracao from Filmes where Ano > 2000;

SELECT Nome, Ano, Duracao from Filmes where Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

SELECT Ano, COUNT(*) AS QuantidadeFilmes FROM Filmes GROUP BY Ano ORDER BY MAX(Duracao) desc;

SELECT PrimeiroNome, UltimoNome, Genero from Atores WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' ORDER BY PrimeiroNome asc;


SELECT Filmes.Nome, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
ORDER BY Filmes.Duracao DESC;


SELECT Filmes.Nome, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'
ORDER BY Filmes.Duracao DESC;

SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
ORDER BY Filmes.Nome;

