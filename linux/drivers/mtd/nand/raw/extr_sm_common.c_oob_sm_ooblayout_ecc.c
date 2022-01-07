
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int length; int offset; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int oob_sm_ooblayout_ecc(struct mtd_info *mtd, int section,
    struct mtd_oob_region *oobregion)
{
 if (section > 1)
  return -ERANGE;

 oobregion->length = 3;
 oobregion->offset = ((section + 1) * 8) - 3;

 return 0;
}
