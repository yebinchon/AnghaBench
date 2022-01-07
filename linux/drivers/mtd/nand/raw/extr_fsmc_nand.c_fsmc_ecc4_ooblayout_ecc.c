
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int steps; int bytes; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int writesize; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int fsmc_ecc4_ooblayout_ecc(struct mtd_info *mtd, int section,
       struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);

 if (section >= chip->ecc.steps)
  return -ERANGE;

 oobregion->length = chip->ecc.bytes;

 if (!section && mtd->writesize <= 512)
  oobregion->offset = 0;
 else
  oobregion->offset = (section * 16) + 2;

 return 0;
}
