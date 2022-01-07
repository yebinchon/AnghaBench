
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {void* timing_2; void* timing_1; void* acc_control; void* config_ext; void* config; } ;
struct brcmnand_host {TYPE_1__ hwcfg; int cs; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int dummy; } ;


 int BRCMNAND_CS_ACC_CONTROL ;
 int BRCMNAND_CS_CFG ;
 int BRCMNAND_CS_CFG_EXT ;
 int BRCMNAND_CS_TIMING1 ;
 int BRCMNAND_CS_TIMING2 ;
 scalar_t__ brcmnand_cs_offset (struct brcmnand_controller*,int ,int ) ;
 void* nand_readreg (struct brcmnand_controller*,scalar_t__) ;
 int nand_writereg (struct brcmnand_controller*,scalar_t__,void*) ;

__attribute__((used)) static void brcmnand_save_restore_cs_config(struct brcmnand_host *host,
         int restore)
{
 struct brcmnand_controller *ctrl = host->ctrl;
 u16 cfg_offs = brcmnand_cs_offset(ctrl, host->cs, BRCMNAND_CS_CFG);
 u16 cfg_ext_offs = brcmnand_cs_offset(ctrl, host->cs,
   BRCMNAND_CS_CFG_EXT);
 u16 acc_control_offs = brcmnand_cs_offset(ctrl, host->cs,
   BRCMNAND_CS_ACC_CONTROL);
 u16 t1_offs = brcmnand_cs_offset(ctrl, host->cs, BRCMNAND_CS_TIMING1);
 u16 t2_offs = brcmnand_cs_offset(ctrl, host->cs, BRCMNAND_CS_TIMING2);

 if (restore) {
  nand_writereg(ctrl, cfg_offs, host->hwcfg.config);
  if (cfg_offs != cfg_ext_offs)
   nand_writereg(ctrl, cfg_ext_offs,
          host->hwcfg.config_ext);
  nand_writereg(ctrl, acc_control_offs, host->hwcfg.acc_control);
  nand_writereg(ctrl, t1_offs, host->hwcfg.timing_1);
  nand_writereg(ctrl, t2_offs, host->hwcfg.timing_2);
 } else {
  host->hwcfg.config = nand_readreg(ctrl, cfg_offs);
  if (cfg_offs != cfg_ext_offs)
   host->hwcfg.config_ext =
    nand_readreg(ctrl, cfg_ext_offs);
  host->hwcfg.acc_control = nand_readreg(ctrl, acc_control_offs);
  host->hwcfg.timing_1 = nand_readreg(ctrl, t1_offs);
  host->hwcfg.timing_2 = nand_readreg(ctrl, t2_offs);
 }
}
