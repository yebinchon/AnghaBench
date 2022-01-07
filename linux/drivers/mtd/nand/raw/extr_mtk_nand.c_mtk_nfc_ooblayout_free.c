
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtk_nfc_fdm {int reg_size; scalar_t__ ecc_size; } ;
struct mtk_nfc_nand_chip {struct mtk_nfc_fdm fdm; } ;
struct mtd_oob_region {scalar_t__ offset; scalar_t__ length; } ;
struct mtd_info {int writesize; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_ooblayout_free(struct mtd_info *mtd, int section,
      struct mtd_oob_region *oob_region)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 struct mtk_nfc_fdm *fdm = &mtk_nand->fdm;
 u32 eccsteps;

 eccsteps = mtd->writesize / chip->ecc.size;

 if (section >= eccsteps)
  return -ERANGE;

 oob_region->length = fdm->reg_size - fdm->ecc_size;
 oob_region->offset = section * fdm->reg_size + fdm->ecc_size;

 return 0;
}
