
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int writesize; int oobsize; } ;


 int ERANGE ;
 int MXC_V1_ECCBYTES ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int mxc_v1_ooblayout_free(struct mtd_info *mtd, int section,
     struct mtd_oob_region *oobregion)
{
 struct nand_chip *nand_chip = mtd_to_nand(mtd);

 if (section > nand_chip->ecc.steps)
  return -ERANGE;

 if (!section) {
  if (mtd->writesize <= 512) {
   oobregion->offset = 0;
   oobregion->length = 5;
  } else {
   oobregion->offset = 2;
   oobregion->length = 4;
  }
 } else {
  oobregion->offset = ((section - 1) * 16) + MXC_V1_ECCBYTES + 6;
  if (section < nand_chip->ecc.steps)
   oobregion->length = (section * 16) + 6 -
         oobregion->offset;
  else
   oobregion->length = mtd->oobsize - oobregion->offset;
 }

 return 0;
}
