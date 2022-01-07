
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int micron_nand_on_die_4_ooblayout_ecc(struct mtd_info *mtd,
           int section,
           struct mtd_oob_region *oobregion)
{
 if (section >= 4)
  return -ERANGE;

 oobregion->offset = (section * 16) + 8;
 oobregion->length = 8;

 return 0;
}
