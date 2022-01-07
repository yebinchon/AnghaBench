
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {int total; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int oobsize; } ;


 int EINVAL ;
 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int nand_ooblayout_free_lp_hamming(struct mtd_info *mtd, int section,
       struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int ecc_offset = 0;

 if (section < 0 || section > 1)
  return -ERANGE;

 switch (mtd->oobsize) {
 case 64:
  ecc_offset = 40;
  break;
 case 128:
  ecc_offset = 80;
  break;
 default:
  return -EINVAL;
 }

 if (section == 0) {
  oobregion->offset = 2;
  oobregion->length = ecc_offset - 2;
 } else {
  oobregion->offset = ecc_offset + ecc->total;
  oobregion->length = mtd->oobsize - oobregion->offset;
 }

 return 0;
}
