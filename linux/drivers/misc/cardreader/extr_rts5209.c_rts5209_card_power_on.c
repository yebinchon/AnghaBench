
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int flags; } ;


 int CARD_PWR_CTL ;
 int LDO3318_PWR_MASK ;
 int MS_PARTIAL_POWER_ON ;
 int MS_POWER_MASK ;
 int MS_POWER_ON ;
 int PCR_MS_PMOS ;
 int PWR_GATE_CTRL ;
 int RTSX_MS_CARD ;
 int SD_PARTIAL_POWER_ON ;
 int SD_POWER_MASK ;
 int SD_POWER_ON ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;
 int udelay (int) ;

__attribute__((used)) static int rts5209_card_power_on(struct rtsx_pcr *pcr, int card)
{
 int err;
 u8 pwr_mask, partial_pwr_on, pwr_on;

 pwr_mask = SD_POWER_MASK;
 partial_pwr_on = SD_PARTIAL_POWER_ON;
 pwr_on = SD_POWER_ON;

 if ((pcr->flags & PCR_MS_PMOS) && (card == RTSX_MS_CARD)) {
  pwr_mask = MS_POWER_MASK;
  partial_pwr_on = MS_PARTIAL_POWER_ON;
  pwr_on = MS_POWER_ON;
 }

 rtsx_pci_init_cmd(pcr);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
   pwr_mask, partial_pwr_on);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
   LDO3318_PWR_MASK, 0x04);
 err = rtsx_pci_send_cmd(pcr, 100);
 if (err < 0)
  return err;


 udelay(150);

 rtsx_pci_init_cmd(pcr);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_PWR_CTL, pwr_mask, pwr_on);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
   LDO3318_PWR_MASK, 0x00);
 return rtsx_pci_send_cmd(pcr, 100);
}
