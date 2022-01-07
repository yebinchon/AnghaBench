
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ IO_ADDR_R; scalar_t__ IO_ADDR_W; int (* cmd_ctrl ) (struct nand_chip*,int ,int) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
struct fsl_upm_nand {int mchip_number; scalar_t__* mchip_offsets; scalar_t__ io_base; } ;


 int BUG () ;
 int NAND_CMD_NONE ;
 int NAND_CTRL_CHANGE ;
 int NAND_MAX_CHIPS ;
 int nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ,int) ;
 struct fsl_upm_nand* to_fsl_upm_nand (int ) ;

__attribute__((used)) static void fun_select_chip(struct nand_chip *chip, int mchip_nr)
{
 struct fsl_upm_nand *fun = to_fsl_upm_nand(nand_to_mtd(chip));

 if (mchip_nr == -1) {
  chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
 } else if (mchip_nr >= 0 && mchip_nr < NAND_MAX_CHIPS) {
  fun->mchip_number = mchip_nr;
  chip->legacy.IO_ADDR_R = fun->io_base + fun->mchip_offsets[mchip_nr];
  chip->legacy.IO_ADDR_W = chip->legacy.IO_ADDR_R;
 } else {
  BUG();
 }
}
