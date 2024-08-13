CREATE PROCEDURE GetPage
	@pageNumber INT,
	@pageSize INT
AS
	SELECT * FROM dbo.Movies
    ORDER BY dbo.Movies.Id
    OFFSET ((@pageNumber - 1) * @pageSize) ROWS
    FETCH NEXT @pageSize ROWS ONLY;
GO
