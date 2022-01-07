
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_cr_option {scalar_t__ ocp_en; } ;
struct rtsx_pcr {struct rtsx_cr_option option; } ;


 int CARD_PWR_CTL ;
 int LDO3318_PWR_MASK ;
 int PWR_GATE_CTRL ;
 int SD_POWER_MASK ;
 int SD_VCC_PARTIAL_POWER_ON ;
 int SD_VCC_POWER_ON ;
 int WRITE_REG_CMD ;
 int msleep (int) ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int ,int) ;
 int rtsx_pci_enable_ocp (struct rtsx_pcr*) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;

__attribute__((used)) static int rtsx_base_card_power_on(struct rtsx_pcr *pcr, int card)
{
 int err;
 struct rtsx_cr_option *option = &pcr->option;

 if (option->ocp_en)
  rtsx_pci_enable_ocp(pcr);

 rtsx_pci_init_cmd(pcr);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
   SD_POWER_MASK, SD_VCC_PARTIAL_POWER_ON);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
   LDO3318_PWR_MASK, 0x02);
 err = rtsx_pci_send_cmd(pcr, 100);
 if (err < 0)
  return err;

 msleep(5);

 rtsx_pci_init_cmd(pcr);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
   SD_POWER_MASK, SD_VCC_POWER_ON);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
   LDO3318_PWR_MASK, 0x06);
 return rtsx_pci_send_cmd(pcr, 100);
}
