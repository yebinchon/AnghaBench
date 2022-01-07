
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vf610_nfc {int dev; int ecc_mode; } ;
struct TYPE_2__ {scalar_t__ mode; int size; int strength; int bytes; int write_oob; int read_oob; int write_page_raw; int read_page_raw; int write_page; int read_page; } ;
struct nand_chip {int bbt_options; TYPE_1__ ecc; } ;
struct mtd_info {int writesize; int oobsize; } ;


 int ECC_45_BYTE ;
 int ECC_60_BYTE ;
 int ENXIO ;
 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;
 scalar_t__ NAND_ECC_HW ;
 int OOB_MAX ;
 int PAGE_2K ;
 struct vf610_nfc* chip_to_nfc (struct nand_chip*) ;
 int dev_err (int ,char*) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 int nand_ooblayout_lp_ops ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int vf610_nfc_init_controller (struct vf610_nfc*) ;
 int vf610_nfc_read_oob ;
 int vf610_nfc_read_page ;
 int vf610_nfc_read_page_raw ;
 int vf610_nfc_write_oob ;
 int vf610_nfc_write_page ;
 int vf610_nfc_write_page_raw ;

__attribute__((used)) static int vf610_nfc_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct vf610_nfc *nfc = chip_to_nfc(chip);

 vf610_nfc_init_controller(nfc);


 if (chip->bbt_options & NAND_BBT_USE_FLASH)
  chip->bbt_options |= NAND_BBT_NO_OOB;


 if (mtd->writesize + mtd->oobsize > PAGE_2K + OOB_MAX - 8) {
  dev_err(nfc->dev, "Unsupported flash page size\n");
  return -ENXIO;
 }

 if (chip->ecc.mode != NAND_ECC_HW)
  return 0;

 if (mtd->writesize != PAGE_2K && mtd->oobsize < 64) {
  dev_err(nfc->dev, "Unsupported flash with hwecc\n");
  return -ENXIO;
 }

 if (chip->ecc.size != mtd->writesize) {
  dev_err(nfc->dev, "Step size needs to be page size\n");
  return -ENXIO;
 }


 if (mtd->oobsize > 64)
  mtd->oobsize = 64;


 mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
 if (chip->ecc.strength == 32) {
  nfc->ecc_mode = ECC_60_BYTE;
  chip->ecc.bytes = 60;
 } else if (chip->ecc.strength == 24) {
  nfc->ecc_mode = ECC_45_BYTE;
  chip->ecc.bytes = 45;
 } else {
  dev_err(nfc->dev, "Unsupported ECC strength\n");
  return -ENXIO;
 }

 chip->ecc.read_page = vf610_nfc_read_page;
 chip->ecc.write_page = vf610_nfc_write_page;
 chip->ecc.read_page_raw = vf610_nfc_read_page_raw;
 chip->ecc.write_page_raw = vf610_nfc_write_page_raw;
 chip->ecc.read_oob = vf610_nfc_read_oob;
 chip->ecc.write_oob = vf610_nfc_write_oob;

 chip->ecc.size = PAGE_2K;

 return 0;
}
