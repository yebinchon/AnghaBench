
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int dummy; } ;
struct mtd_info {int dummy; } ;


 int mtd_ooblayout_ecc ;
 int mtd_ooblayout_find_region (struct mtd_info*,int,int*,struct mtd_oob_region*,int ) ;

int mtd_ooblayout_find_eccregion(struct mtd_info *mtd, int eccbyte,
     int *section,
     struct mtd_oob_region *oobregion)
{
 return mtd_ooblayout_find_region(mtd, eccbyte, section, oobregion,
      mtd_ooblayout_ecc);
}
