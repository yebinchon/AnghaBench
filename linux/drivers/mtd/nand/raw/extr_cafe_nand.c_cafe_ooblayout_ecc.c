
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {int length; scalar_t__ offset; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int cafe_ooblayout_ecc(struct mtd_info *mtd, int section,
         struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);

 if (section)
  return -ERANGE;

 oobregion->offset = 0;
 oobregion->length = chip->ecc.total;

 return 0;
}
