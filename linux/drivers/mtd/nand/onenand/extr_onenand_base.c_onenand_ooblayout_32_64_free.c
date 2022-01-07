
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int oobsize; } ;


 int ERANGE ;

__attribute__((used)) static int onenand_ooblayout_32_64_free(struct mtd_info *mtd, int section,
     struct mtd_oob_region *oobregion)
{
 int sections = (mtd->oobsize / 32) * 2;

 if (section >= sections)
  return -ERANGE;

 if (section & 1) {
  oobregion->offset = ((section - 1) * 16) + 14;
  oobregion->length = 2;
 } else {
  oobregion->offset = (section * 16) + 2;
  oobregion->length = 3;
 }

 return 0;
}
