
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {scalar_t__ total; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_oob_region {int offset; scalar_t__ length; } ;
struct mtd_info {scalar_t__ oobsize; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int nand_ooblayout_free_lp(struct mtd_info *mtd, int section,
      struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct nand_ecc_ctrl *ecc = &chip->ecc;

 if (section)
  return -ERANGE;

 oobregion->length = mtd->oobsize - ecc->total - 2;
 oobregion->offset = 2;

 return 0;
}
