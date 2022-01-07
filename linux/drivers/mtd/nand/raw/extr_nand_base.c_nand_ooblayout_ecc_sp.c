
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {int total; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int oobsize; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int nand_ooblayout_ecc_sp(struct mtd_info *mtd, int section,
     struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct nand_ecc_ctrl *ecc = &chip->ecc;

 if (section > 1)
  return -ERANGE;

 if (!section) {
  oobregion->offset = 0;
  if (mtd->oobsize == 16)
   oobregion->length = 4;
  else
   oobregion->length = 3;
 } else {
  if (mtd->oobsize == 8)
   return -ERANGE;

  oobregion->offset = 6;
  oobregion->length = ecc->total - 4;
 }

 return 0;
}
