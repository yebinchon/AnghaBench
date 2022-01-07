
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int CARD_PWR_CTL ;
 int LDO3318_PWR_MASK ;
 int PMOS_STRG_400mA ;
 int PMOS_STRG_MASK ;
 int PWR_GATE_CTRL ;
 int SD_POWER_MASK ;
 int SD_POWER_OFF ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;

__attribute__((used)) static int rts5229_card_power_off(struct rtsx_pcr *pcr, int card)
{
 rtsx_pci_init_cmd(pcr);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
   SD_POWER_MASK | PMOS_STRG_MASK,
   SD_POWER_OFF | PMOS_STRG_400mA);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
   LDO3318_PWR_MASK, 0x00);
 return rtsx_pci_send_cmd(pcr, 100);
}
