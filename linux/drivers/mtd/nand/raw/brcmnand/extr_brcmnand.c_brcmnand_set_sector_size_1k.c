
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct brcmnand_host {int cs; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int dummy; } ;


 int BRCMNAND_CS_ACC_CONTROL ;
 int brcmnand_cs_offset (struct brcmnand_controller*,int ,int ) ;
 int brcmnand_sector_1k_shift (struct brcmnand_controller*) ;
 int nand_readreg (struct brcmnand_controller*,int ) ;
 int nand_writereg (struct brcmnand_controller*,int ,int) ;

__attribute__((used)) static void brcmnand_set_sector_size_1k(struct brcmnand_host *host, int val)
{
 struct brcmnand_controller *ctrl = host->ctrl;
 int shift = brcmnand_sector_1k_shift(ctrl);
 u16 acc_control_offs = brcmnand_cs_offset(ctrl, host->cs,
        BRCMNAND_CS_ACC_CONTROL);
 u32 tmp;

 if (shift < 0)
  return;

 tmp = nand_readreg(ctrl, acc_control_offs);
 tmp &= ~(1 << shift);
 tmp |= (!!val) << shift;
 nand_writereg(ctrl, acc_control_offs, tmp);
}
