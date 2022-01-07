
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int lpc32xx_ooblayout_free(struct mtd_info *mtd, int section,
      struct mtd_oob_region *oobregion)
{
 if (section > 1)
  return -ERANGE;

 if (!section) {
  oobregion->offset = 0;
  oobregion->length = 4;
 } else {
  oobregion->offset = 6;
  oobregion->length = 4;
 }

 return 0;
}
