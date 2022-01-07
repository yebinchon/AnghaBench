
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int flctl_4secc_ooblayout_sp_free(struct mtd_info *mtd, int section,
      struct mtd_oob_region *oobregion)
{
 if (section)
  return -ERANGE;

 oobregion->offset = 12;
 oobregion->length = 4;

 return 0;
}
