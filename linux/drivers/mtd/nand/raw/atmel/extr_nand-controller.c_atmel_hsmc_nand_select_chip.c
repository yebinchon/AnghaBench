
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int dev_ready; } ;
struct nand_chip {TYPE_3__ legacy; int controller; } ;
struct mtd_info {int oobsize; int writesize; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_8__ {int smc; } ;
struct atmel_hsmc_nand_controller {TYPE_4__ base; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ rb; } ;


 int ATMEL_HSMC_NFC_CFG ;
 int ATMEL_HSMC_NFC_CFG_PAGESIZE (int ) ;
 int ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK ;
 int ATMEL_HSMC_NFC_CFG_RSPARE ;
 int ATMEL_HSMC_NFC_CFG_SPARESIZE (int ) ;
 int ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK ;
 int ATMEL_HSMC_NFC_CFG_WSPARE ;
 int ATMEL_HSMC_NFC_CTRL ;
 int ATMEL_HSMC_NFC_CTRL_DIS ;
 int ATMEL_HSMC_NFC_CTRL_EN ;
 scalar_t__ ATMEL_NAND_NATIVE_RB ;
 int atmel_hsmc_nand_dev_ready ;
 int atmel_nand_select_chip (struct nand_chip*,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static void atmel_hsmc_nand_select_chip(struct nand_chip *chip, int cs)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct atmel_hsmc_nand_controller *nc;

 nc = to_hsmc_nand_controller(chip->controller);

 atmel_nand_select_chip(chip, cs);

 if (!nand->activecs) {
  regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CTRL,
        ATMEL_HSMC_NFC_CTRL_DIS);
  return;
 }

 if (nand->activecs->rb.type == ATMEL_NAND_NATIVE_RB)
  chip->legacy.dev_ready = atmel_hsmc_nand_dev_ready;

 regmap_update_bits(nc->base.smc, ATMEL_HSMC_NFC_CFG,
      ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK |
      ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK |
      ATMEL_HSMC_NFC_CFG_RSPARE |
      ATMEL_HSMC_NFC_CFG_WSPARE,
      ATMEL_HSMC_NFC_CFG_PAGESIZE(mtd->writesize) |
      ATMEL_HSMC_NFC_CFG_SPARESIZE(mtd->oobsize) |
      ATMEL_HSMC_NFC_CFG_RSPARE);
 regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CTRL,
       ATMEL_HSMC_NFC_CTRL_EN);
}
