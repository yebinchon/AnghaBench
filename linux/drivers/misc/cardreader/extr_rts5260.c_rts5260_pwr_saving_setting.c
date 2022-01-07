
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int ASPM_FORCE_CTL ;
 int ASPM_L1_1_EN ;
 int ASPM_L1_2_EN ;
 int CFG_L1_0_CRC_MISC_RET_VALUE ;
 int CFG_L1_0_CRC_MISC_RET_VALUE_DEFAULT ;
 int CFG_L1_0_CRC_SD30_RET_VALUE ;
 int CFG_L1_0_CRC_SD40_RET_VALUE ;
 int CFG_L1_0_PCIE_DPHY_RET_VALUE ;
 int CFG_L1_0_PCIE_MAC_RET_VALUE ;
 int CFG_L1_0_RET_VALUE_DEFAULT ;
 int CFG_L1_0_SYS_RET_VALUE ;
 int CFG_LP_FPWM_VALUE ;
 int CFG_LP_FPWM_VALUE_DEFAULT ;
 int CFG_PCIE_APHY_OFF_0 ;
 int CFG_PCIE_APHY_OFF_0_DEFAULT ;
 int CFG_PCIE_APHY_OFF_1 ;
 int CFG_PCIE_APHY_OFF_1_DEFAULT ;
 int CFG_PCIE_APHY_OFF_2 ;
 int CFG_PCIE_APHY_OFF_2_DEFAULT ;
 int CFG_PCIE_APHY_OFF_3 ;
 int CFG_PCIE_APHY_OFF_3_DEFAULT ;
 int PCIE_L1_0_EN ;
 int PCIE_L1_0_PD_FE_EN ;
 int PCIE_L1_1_EN ;
 int PCIE_L1_1_PD_FE_EN ;
 int PCIE_L1_2_EN ;
 int PCIE_L1_2_PD_FE_EN ;
 int PM_L1_1_EN ;
 int PM_L1_2_EN ;
 int PWC_CDR ;
 int PWC_CDR_DEFAULT ;
 int PWR_FE_CTL ;
 int PWR_GLOBAL_CTRL ;
 int RTS5260_DVCC_CTRL ;
 int RTS5260_DVCC_OCP_CL_EN ;
 int RTS5260_DVCC_OCP_EN ;
 int pcr_dbg (struct rtsx_pcr*,char*) ;
 int rtsx_check_dev_flag (struct rtsx_pcr*,int ) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;

__attribute__((used)) static void rts5260_pwr_saving_setting(struct rtsx_pcr *pcr)
{
 int lss_l1_1, lss_l1_2;

 lss_l1_1 = rtsx_check_dev_flag(pcr, ASPM_L1_1_EN)
   | rtsx_check_dev_flag(pcr, PM_L1_1_EN);
 lss_l1_2 = rtsx_check_dev_flag(pcr, ASPM_L1_2_EN)
   | rtsx_check_dev_flag(pcr, PM_L1_2_EN);

 rtsx_pci_write_register(pcr, ASPM_FORCE_CTL, 0xFF, 0);
 if (lss_l1_2) {
  pcr_dbg(pcr, "Set parameters for L1.2.");
  rtsx_pci_write_register(pcr, PWR_GLOBAL_CTRL,
     0xFF, PCIE_L1_2_EN);
  rtsx_pci_write_register(pcr, RTS5260_DVCC_CTRL,
     RTS5260_DVCC_OCP_EN |
     RTS5260_DVCC_OCP_CL_EN,
     RTS5260_DVCC_OCP_EN |
     RTS5260_DVCC_OCP_CL_EN);

  rtsx_pci_write_register(pcr, PWR_FE_CTL,
     0xFF, PCIE_L1_2_PD_FE_EN);
 } else if (lss_l1_1) {
  pcr_dbg(pcr, "Set parameters for L1.1.");
  rtsx_pci_write_register(pcr, PWR_GLOBAL_CTRL,
     0xFF, PCIE_L1_1_EN);
  rtsx_pci_write_register(pcr, PWR_FE_CTL,
     0xFF, PCIE_L1_1_PD_FE_EN);
 } else {
  pcr_dbg(pcr, "Set parameters for L1.");
  rtsx_pci_write_register(pcr, PWR_GLOBAL_CTRL,
     0xFF, PCIE_L1_0_EN);
  rtsx_pci_write_register(pcr, PWR_FE_CTL,
     0xFF, PCIE_L1_0_PD_FE_EN);
 }

 rtsx_pci_write_register(pcr, CFG_L1_0_PCIE_DPHY_RET_VALUE,
    0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
 rtsx_pci_write_register(pcr, CFG_L1_0_PCIE_MAC_RET_VALUE,
    0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
 rtsx_pci_write_register(pcr, CFG_L1_0_CRC_SD30_RET_VALUE,
    0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
 rtsx_pci_write_register(pcr, CFG_L1_0_CRC_SD40_RET_VALUE,
    0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
 rtsx_pci_write_register(pcr, CFG_L1_0_SYS_RET_VALUE,
    0xFF, CFG_L1_0_RET_VALUE_DEFAULT);

 rtsx_pci_write_register(pcr, CFG_PCIE_APHY_OFF_0,
    0xFF, CFG_PCIE_APHY_OFF_0_DEFAULT);
 rtsx_pci_write_register(pcr, CFG_PCIE_APHY_OFF_1,
    0xFF, CFG_PCIE_APHY_OFF_1_DEFAULT);
 rtsx_pci_write_register(pcr, CFG_PCIE_APHY_OFF_2,
    0xFF, CFG_PCIE_APHY_OFF_2_DEFAULT);
 rtsx_pci_write_register(pcr, CFG_PCIE_APHY_OFF_3,
    0xFF, CFG_PCIE_APHY_OFF_3_DEFAULT);

 rtsx_pci_write_register(pcr, PWC_CDR, 0xFF, PWC_CDR_DEFAULT);

 rtsx_pci_write_register(pcr, CFG_LP_FPWM_VALUE,
    0xFF, CFG_LP_FPWM_VALUE_DEFAULT);

 rtsx_pci_write_register(pcr, CFG_L1_0_CRC_MISC_RET_VALUE,
    0xFF, CFG_L1_0_CRC_MISC_RET_VALUE_DEFAULT);
}
