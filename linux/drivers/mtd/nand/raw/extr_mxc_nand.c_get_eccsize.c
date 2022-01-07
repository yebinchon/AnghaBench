
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int oobsize; int writesize; } ;



__attribute__((used)) static int get_eccsize(struct mtd_info *mtd)
{
 int oobbytes_per_512 = 0;

 oobbytes_per_512 = mtd->oobsize * 512 / mtd->writesize;

 if (oobbytes_per_512 < 26)
  return 4;
 else
  return 8;
}
