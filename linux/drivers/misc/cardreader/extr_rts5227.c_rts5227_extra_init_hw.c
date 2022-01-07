
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtsx_pcr {int flags; int reg_pm_ctrl3; int pci; } ;


 int ASPM_FORCE_CTL ;
 int GPIO_CTL ;
 int LDO_PWR_SEL ;
 int LTR_CTL ;
 int OBFF_CFG ;
 int OLT_LED_CTL ;
 int OUTPUT_3V3 ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_DEVCTL2_LTR_EN ;
 int PCR_REVERSE_SOCKET ;
 int PETXCFG ;
 int WRITE_REG_CMD ;
 int pcie_capability_read_word (int ,int ,int*) ;
 int rts5227_fill_driving (struct rtsx_pcr*,int ) ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;

__attribute__((used)) static int rts5227_extra_init_hw(struct rtsx_pcr *pcr)
{
 u16 cap;

 rtsx_pci_init_cmd(pcr);


 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, GPIO_CTL, 0x02, 0x02);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, ASPM_FORCE_CTL, 0x3F, 0);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, LDO_PWR_SEL, 0x03, 0x00);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, LDO_PWR_SEL, 0x03, 0x01);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, OLT_LED_CTL, 0x0F, 0x02);

 pcie_capability_read_word(pcr->pci, PCI_EXP_DEVCTL2, &cap);
 if (cap & PCI_EXP_DEVCTL2_LTR_EN)
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, LTR_CTL, 0xFF, 0xA3);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, OBFF_CFG, 0x03, 0x03);

 rts5227_fill_driving(pcr, OUTPUT_3V3);

 if (pcr->flags & PCR_REVERSE_SOCKET)
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG, 0xB8, 0xB8);
 else
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG, 0xB8, 0x88);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, pcr->reg_pm_ctrl3, 0x10, 0x00);

 return rtsx_pci_send_cmd(pcr, 100);
}
