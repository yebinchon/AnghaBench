
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytes; int strength; int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {scalar_t__ oobsize; } ;
struct denali_controller {int dev; scalar_t__ oob_skip_bytes; int ecc_caps; } ;


 int denali_multidev_fixup (struct nand_chip*) ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_err (int ,char*) ;
 int nand_ecc_choose_conf (struct nand_chip*,int ,scalar_t__) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct denali_controller* to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_attach_chip(struct nand_chip *chip)
{
 struct denali_controller *denali = to_denali_controller(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;

 ret = nand_ecc_choose_conf(chip, denali->ecc_caps,
       mtd->oobsize - denali->oob_skip_bytes);
 if (ret) {
  dev_err(denali->dev, "Failed to setup ECC settings.\n");
  return ret;
 }

 dev_dbg(denali->dev,
  "chosen ECC settings: step=%d, strength=%d, bytes=%d\n",
  chip->ecc.size, chip->ecc.strength, chip->ecc.bytes);

 ret = denali_multidev_fixup(chip);
 if (ret)
  return ret;

 return 0;
}
