
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt_fw_health {int* regs; int* mapped_regs; int fw_reset_inprog_reg_mask; } ;
struct bnxt {int bar0; int bar1; int pdev; struct bnxt_fw_health* fw_health; } ;


 int BNXT_FW_HEALTH_REG_OFF (int) ;
 int BNXT_FW_HEALTH_REG_TYPE (int) ;




 int BNXT_FW_RESET_INPROG_REG ;
 int pci_read_config_dword (int ,int,int*) ;
 int readl (int) ;

u32 bnxt_fw_health_readl(struct bnxt *bp, int reg_idx)
{
 struct bnxt_fw_health *fw_health = bp->fw_health;
 u32 reg = fw_health->regs[reg_idx];
 u32 reg_type, reg_off, val = 0;

 reg_type = BNXT_FW_HEALTH_REG_TYPE(reg);
 reg_off = BNXT_FW_HEALTH_REG_OFF(reg);
 switch (reg_type) {
 case 129:
  pci_read_config_dword(bp->pdev, reg_off, &val);
  break;
 case 128:
  reg_off = fw_health->mapped_regs[reg_idx];

 case 131:
  val = readl(bp->bar0 + reg_off);
  break;
 case 130:
  val = readl(bp->bar1 + reg_off);
  break;
 }
 if (reg_idx == BNXT_FW_RESET_INPROG_REG)
  val &= fw_health->fw_reset_inprog_reg_mask;
 return val;
}
