
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcmnand_host {int cs; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int dummy; } ;


 int BRCMNAND_CS_ACC_CONTROL ;
 int brcmnand_cs_offset (struct brcmnand_controller*,int ,int ) ;
 int brcmnand_sector_1k_shift (struct brcmnand_controller*) ;
 int nand_readreg (struct brcmnand_controller*,int ) ;

__attribute__((used)) static int brcmnand_get_sector_size_1k(struct brcmnand_host *host)
{
 struct brcmnand_controller *ctrl = host->ctrl;
 int shift = brcmnand_sector_1k_shift(ctrl);
 u16 acc_control_offs = brcmnand_cs_offset(ctrl, host->cs,
        BRCMNAND_CS_ACC_CONTROL);

 if (shift < 0)
  return 0;

 return (nand_readreg(ctrl, acc_control_offs) >> shift) & 0x1;
}
