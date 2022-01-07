
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int (* waitfunc ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_4__ legacy; int oob_poi; int controller; } ;
struct mtd_info {int oobsize; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {int ncmds; int cs; int * cmds; int data; } ;
struct atmel_hsmc_nand_controller {TYPE_3__ base; TYPE_1__ op; } ;
struct TYPE_6__ {int id; } ;


 int ATMEL_NFC_WRITE_DATA ;
 int EIO ;
 int NAND_CMD_PAGEPROG ;
 int NAND_CMD_SEQIN ;
 int NAND_ECC_WRITE ;
 int NAND_STATUS_FAIL ;
 int atmel_nand_pmecc_disable (struct nand_chip*,int) ;
 int atmel_nand_pmecc_enable (struct nand_chip*,int ,int) ;
 int atmel_nand_pmecc_generate_eccbytes (struct nand_chip*,int) ;
 int atmel_nand_write_buf (struct nand_chip*,int ,int ) ;
 int atmel_nfc_copy_to_sram (struct nand_chip*,int const*,int) ;
 int atmel_nfc_exec_op (struct atmel_hsmc_nand_controller*,int) ;
 int atmel_nfc_set_op_addr (struct nand_chip*,int,int) ;
 int dev_err (int ,char*,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static int atmel_hsmc_nand_pmecc_write_pg(struct nand_chip *chip,
       const u8 *buf, bool oob_required,
       int page, bool raw)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct atmel_hsmc_nand_controller *nc;
 int ret, status;

 nc = to_hsmc_nand_controller(chip->controller);

 atmel_nfc_copy_to_sram(chip, buf, 0);

 nc->op.cmds[0] = NAND_CMD_SEQIN;
 nc->op.ncmds = 1;
 atmel_nfc_set_op_addr(chip, page, 0x0);
 nc->op.cs = nand->activecs->id;
 nc->op.data = ATMEL_NFC_WRITE_DATA;

 ret = atmel_nand_pmecc_enable(chip, NAND_ECC_WRITE, raw);
 if (ret)
  return ret;

 ret = atmel_nfc_exec_op(nc, 0);
 if (ret) {
  atmel_nand_pmecc_disable(chip, raw);
  dev_err(nc->base.dev,
   "Failed to transfer NAND page data (err = %d)\n",
   ret);
  return ret;
 }

 ret = atmel_nand_pmecc_generate_eccbytes(chip, raw);

 atmel_nand_pmecc_disable(chip, raw);

 if (ret)
  return ret;

 atmel_nand_write_buf(chip, chip->oob_poi, mtd->oobsize);

 nc->op.cmds[0] = NAND_CMD_PAGEPROG;
 nc->op.ncmds = 1;
 nc->op.cs = nand->activecs->id;
 ret = atmel_nfc_exec_op(nc, 0);
 if (ret)
  dev_err(nc->base.dev, "Failed to program NAND page (err = %d)\n",
   ret);

 status = chip->legacy.waitfunc(chip);
 if (status & NAND_STATUS_FAIL)
  return -EIO;

 return ret;
}
