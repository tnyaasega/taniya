SELECT tempatlahir, MIN(nilai)
FROM siswa
GROUP BY tempatlahir;

SELECT tempatlahir, MAX(nilai)
FROM siswa
GROUP BY tempatlahir;

SELECT tempatlahir, MIN(nilai), MAX(nilai)
FROM siswa
GROUP BY tempatlahir;

SELECT tempatlahir, MIN(nilai)AS nilai_terendah,
MAX(nilai)AS nilai_tertinggi
FROM siswa
GROUP BY tempatlahir;

INSERT INTO pinjambuku (id_pinjam, nis, nama_buku) VALUES ('1','12002429','BASIS_DATA'),('2','12002439','BULAN'),('3','12002540','BASIS_DATA'),('4','12002540','PEMROG_WEB'),('5','12003010','PBO'),('6','12004000','DILAN1991');

SELECT tempatlahir, COUNT(tempatlahir) AS orang_lahir
FROM siswa
GROUP BY tempatlahir;

SELECT jk, SUM(nilai) AS rata_rata
FROM siswa
GROUP BY jk;

SELECT jk, AVG(nilai) AS rata_rata
FROM siswa
GROUP BY jk;

SELECT siswa.* , pinjambuku.*
FROM siswa
RIGHT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.* , pinjambuku.*
FROM siswa
LEFT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.* , pinjambuku.*
FROM siswa
LEFT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis
WHERE pinjambuku.nis IS NULL;