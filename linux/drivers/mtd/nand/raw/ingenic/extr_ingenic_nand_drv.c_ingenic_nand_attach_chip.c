
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int strength; int bytes; int size; int mode; int correct; int calculate; int hwctl; } ;
struct nand_chip {int bbt_options; TYPE_1__ ecc; int controller; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct ingenic_nfc {TYPE_2__* soc_info; int dev; int ecc; } ;
struct TYPE_4__ {int * oob_layout; } ;


 int EINVAL ;
 int ENODEV ;
 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;



 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,...) ;
 int fls (int) ;
 int ingenic_nand_ecc_calculate ;
 int ingenic_nand_ecc_correct ;
 int ingenic_nand_ecc_hwctl ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int qi_lb60_ooblayout_ops ;
 struct ingenic_nfc* to_ingenic_nfc (int ) ;

__attribute__((used)) static int ingenic_nand_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct ingenic_nfc *nfc = to_ingenic_nfc(chip->controller);
 int eccbytes;

 if (chip->ecc.strength == 4) {

  chip->ecc.bytes = 9;
 } else {
  chip->ecc.bytes = fls((1 + 8) * chip->ecc.size) *
      (chip->ecc.strength / 8);
 }

 switch (chip->ecc.mode) {
 case 130:
  if (!nfc->ecc) {
   dev_err(nfc->dev, "HW ECC selected, but ECC controller not found\n");
   return -ENODEV;
  }

  chip->ecc.hwctl = ingenic_nand_ecc_hwctl;
  chip->ecc.calculate = ingenic_nand_ecc_calculate;
  chip->ecc.correct = ingenic_nand_ecc_correct;

 case 128:
  dev_info(nfc->dev, "using %s (strength %d, size %d, bytes %d)\n",
    (nfc->ecc) ? "hardware ECC" : "software ECC",
    chip->ecc.strength, chip->ecc.size, chip->ecc.bytes);
  break;
 case 129:
  dev_info(nfc->dev, "not using ECC\n");
  break;
 default:
  dev_err(nfc->dev, "ECC mode %d not supported\n",
   chip->ecc.mode);
  return -EINVAL;
 }


 if (chip->ecc.mode != 130)
  return 0;


 eccbytes = mtd->writesize / chip->ecc.size * chip->ecc.bytes;

 if (eccbytes > mtd->oobsize - 2) {
  dev_err(nfc->dev,
   "invalid ECC config: required %d ECC bytes, but only %d are available",
   eccbytes, mtd->oobsize - 2);
  return -EINVAL;
 }





 if (chip->bbt_options & NAND_BBT_USE_FLASH)
  chip->bbt_options |= NAND_BBT_NO_OOB;


 if (of_machine_is_compatible("qi,lb60"))
  mtd_set_ooblayout(mtd, &qi_lb60_ooblayout_ops);
 else
  mtd_set_ooblayout(mtd, nfc->soc_info->oob_layout);

 return 0;
}
