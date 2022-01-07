
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmnand_host {int cs; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int nand_version; } ;
typedef enum brcmnand_reg { ____Placeholder_brcmnand_reg } brcmnand_reg ;


 int BRCMNAND_CORR_THRESHOLD ;
 int BRCMNAND_CORR_THRESHOLD_EXT ;
 int brcmnand_rmw_reg (struct brcmnand_controller*,int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void brcmnand_wr_corr_thresh(struct brcmnand_host *host, u8 val)
{
 struct brcmnand_controller *ctrl = host->ctrl;
 unsigned int shift = 0, bits;
 enum brcmnand_reg reg = BRCMNAND_CORR_THRESHOLD;
 int cs = host->cs;

 if (ctrl->nand_version == 0x0702)
  bits = 7;
 else if (ctrl->nand_version >= 0x0600)
  bits = 6;
 else if (ctrl->nand_version >= 0x0500)
  bits = 5;
 else
  bits = 4;

 if (ctrl->nand_version >= 0x0702) {
  if (cs >= 4)
   reg = BRCMNAND_CORR_THRESHOLD_EXT;
  shift = (cs % 4) * bits;
 } else if (ctrl->nand_version >= 0x0600) {
  if (cs >= 5)
   reg = BRCMNAND_CORR_THRESHOLD_EXT;
  shift = (cs % 5) * bits;
 }
 brcmnand_rmw_reg(ctrl, reg, (bits - 1) << shift, shift, val);
}
