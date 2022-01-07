
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int mtd_ooblayout_count_bytes (struct mtd_info*,int ) ;
 int mtd_ooblayout_ecc ;

int mtd_ooblayout_count_eccbytes(struct mtd_info *mtd)
{
 return mtd_ooblayout_count_bytes(mtd, mtd_ooblayout_ecc);
}
