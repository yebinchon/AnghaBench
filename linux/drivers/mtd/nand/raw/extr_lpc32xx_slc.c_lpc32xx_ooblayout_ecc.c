
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int length; int offset; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int lpc32xx_ooblayout_ecc(struct mtd_info *mtd, int section,
     struct mtd_oob_region *oobregion)
{
 if (section)
  return -ERANGE;

 oobregion->length = 6;
 oobregion->offset = 10;

 return 0;
}
