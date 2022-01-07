
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int hwecc4_ooblayout_small_ecc(struct mtd_info *mtd, int section,
          struct mtd_oob_region *oobregion)
{
 if (section > 2)
  return -ERANGE;

 if (!section) {
  oobregion->offset = 0;
  oobregion->length = 5;
 } else if (section == 1) {
  oobregion->offset = 6;
  oobregion->length = 2;
 } else {
  oobregion->offset = 13;
  oobregion->length = 3;
 }

 return 0;
}
