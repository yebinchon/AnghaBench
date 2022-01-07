
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int controller; } ;
struct mtd_info {int writesize; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int data; int cs; int ncmds; int * cmds; } ;
struct atmel_hsmc_nand_controller {TYPE_4__ base; TYPE_3__ op; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {int id; TYPE_1__ rb; } ;


 scalar_t__ ATMEL_NAND_NATIVE_RB ;
 int ATMEL_NFC_READ_DATA ;
 int NAND_CMD_READ0 ;
 int NAND_CMD_READSTART ;
 int NAND_ECC_READ ;
 int atmel_nand_pmecc_correct_data (struct nand_chip*,int *,int) ;
 int atmel_nand_pmecc_disable (struct nand_chip*,int) ;
 int atmel_nand_pmecc_enable (struct nand_chip*,int ,int) ;
 int atmel_nand_pmecc_read_pg (struct nand_chip*,int *,int,int,int) ;
 int atmel_nfc_copy_from_sram (struct nand_chip*,int *,int) ;
 int atmel_nfc_exec_op (struct atmel_hsmc_nand_controller*,int) ;
 int atmel_nfc_set_op_addr (struct nand_chip*,int,int) ;
 int dev_err (int ,char*,int) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static int atmel_hsmc_nand_pmecc_read_pg(struct nand_chip *chip, u8 *buf,
      bool oob_required, int page,
      bool raw)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct atmel_hsmc_nand_controller *nc;
 int ret;

 nc = to_hsmc_nand_controller(chip->controller);






 if (nand->activecs->rb.type != ATMEL_NAND_NATIVE_RB) {
  nand_read_page_op(chip, page, 0, ((void*)0), 0);

  return atmel_nand_pmecc_read_pg(chip, buf, oob_required, page,
      raw);
 }

 nc->op.cmds[nc->op.ncmds++] = NAND_CMD_READ0;

 if (mtd->writesize > 512)
  nc->op.cmds[nc->op.ncmds++] = NAND_CMD_READSTART;

 atmel_nfc_set_op_addr(chip, page, 0x0);
 nc->op.cs = nand->activecs->id;
 nc->op.data = ATMEL_NFC_READ_DATA;

 ret = atmel_nand_pmecc_enable(chip, NAND_ECC_READ, raw);
 if (ret)
  return ret;

 ret = atmel_nfc_exec_op(nc, 0);
 if (ret) {
  atmel_nand_pmecc_disable(chip, raw);
  dev_err(nc->base.dev,
   "Failed to load NAND page data (err = %d)\n",
   ret);
  return ret;
 }

 atmel_nfc_copy_from_sram(chip, buf, 1);

 ret = atmel_nand_pmecc_correct_data(chip, buf, raw);

 atmel_nand_pmecc_disable(chip, raw);

 return ret;
}
