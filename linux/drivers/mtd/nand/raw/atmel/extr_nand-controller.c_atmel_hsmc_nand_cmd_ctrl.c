
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {int controller; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_3__ {scalar_t__ naddrs; int* addrs; int ncmds; int* cmds; int cs; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ op; } ;
struct TYPE_4__ {int id; } ;


 scalar_t__ ATMEL_NFC_MAX_ADDR_CYCLES ;
 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int atmel_nfc_exec_op (struct atmel_hsmc_nand_controller*,int) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static void atmel_hsmc_nand_cmd_ctrl(struct nand_chip *chip, int dat,
         unsigned int ctrl)
{
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct atmel_hsmc_nand_controller *nc;

 nc = to_hsmc_nand_controller(chip->controller);

 if (ctrl & NAND_ALE) {
  if (nc->op.naddrs == ATMEL_NFC_MAX_ADDR_CYCLES)
   return;

  nc->op.addrs[nc->op.naddrs++] = dat;
 } else if (ctrl & NAND_CLE) {
  if (nc->op.ncmds > 1)
   return;

  nc->op.cmds[nc->op.ncmds++] = dat;
 }

 if (dat == NAND_CMD_NONE) {
  nc->op.cs = nand->activecs->id;
  atmel_nfc_exec_op(nc, 1);
 }
}
