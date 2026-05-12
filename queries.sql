-- 查看总行数
SELECT COUNT(*) FROM OnlineRetail;

-- 各国销售额排名
SELECT C8 AS Country, SUM(C4 * C5) AS total_sales
FROM OnlineRetail
GROUP BY C8
ORDER BY total_sales DESC
LIMIT 10;

-- 畅销商品排名（按销售额）
SELECT C3 AS Product, SUM(C4 * C5) AS product_sales
FROM OnlineRetail
GROUP BY C3
ORDER BY product_sales DESC
LIMIT 10;
