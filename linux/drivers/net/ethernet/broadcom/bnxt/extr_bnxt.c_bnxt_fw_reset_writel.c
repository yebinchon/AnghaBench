
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt_fw_health {int* fw_reset_seq_regs; int* fw_reset_seq_vals; int* fw_reset_seq_delay_msec; } ;
struct bnxt {int bar0; int bar1; int pdev; struct bnxt_fw_health* fw_health; } ;


 int BNXT_FW_HEALTH_REG_OFF (int) ;
 int BNXT_FW_HEALTH_REG_TYPE (int) ;




 int BNXT_GRCPF_REG_WINDOW_BASE_OUT ;
 int BNXT_GRC_BASE_MASK ;
 int BNXT_GRC_OFFSET_MASK ;
 int msleep (int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int,int) ;
 int writel (int,int) ;

__attribute__((used)) static void bnxt_fw_reset_writel(struct bnxt *bp, int reg_idx)
{
 struct bnxt_fw_health *fw_health = bp->fw_health;
 u32 reg = fw_health->fw_reset_seq_regs[reg_idx];
 u32 val = fw_health->fw_reset_seq_vals[reg_idx];
 u32 reg_type, reg_off, delay_msecs;

 delay_msecs = fw_health->fw_reset_seq_delay_msec[reg_idx];
 reg_type = BNXT_FW_HEALTH_REG_TYPE(reg);
 reg_off = BNXT_FW_HEALTH_REG_OFF(reg);
 switch (reg_type) {
 case 129:
  pci_write_config_dword(bp->pdev, reg_off, val);
  break;
 case 128:
  writel(reg_off & BNXT_GRC_BASE_MASK,
         bp->bar0 + BNXT_GRCPF_REG_WINDOW_BASE_OUT + 4);
  reg_off = (reg_off & BNXT_GRC_OFFSET_MASK) + 0x2000;

 case 131:
  writel(val, bp->bar0 + reg_off);
  break;
 case 130:
  writel(val, bp->bar1 + reg_off);
  break;
 }
 if (delay_msecs) {
  pci_read_config_dword(bp->pdev, 0, &val);
  msleep(delay_msecs);
 }
}
