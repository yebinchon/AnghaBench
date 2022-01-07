
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int CARD_CLK_EN ;
 int CARD_OE ;
 int MS_CLK_EN ;
 int MS_OUTPUT_EN ;
 int RTSX_MS_CARD ;
 int SD40_CLK_EN ;
 int SD_CLK_EN ;
 int rtsx_pci_card_power_off (struct rtsx_pcr*,int ) ;
 int rtsx_pci_card_pull_ctl_disable (struct rtsx_pcr*,int ) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int ) ;

int rtsx_ms_power_off_card3v3(struct rtsx_pcr *pcr)
{
 rtsx_pci_write_register(pcr, CARD_CLK_EN, SD_CLK_EN |
  MS_CLK_EN | SD40_CLK_EN, 0);

 rtsx_pci_card_pull_ctl_disable(pcr, RTSX_MS_CARD);

 rtsx_pci_write_register(pcr, CARD_OE, MS_OUTPUT_EN, 0);
 rtsx_pci_card_power_off(pcr, RTSX_MS_CARD);

 return 0;
}
