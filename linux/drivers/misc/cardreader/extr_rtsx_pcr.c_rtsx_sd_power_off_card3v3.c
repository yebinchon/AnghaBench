
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int CARD_CLK_EN ;
 int CARD_OE ;
 int MS_CLK_EN ;
 int RTSX_SD_CARD ;
 int SD40_CLK_EN ;
 int SD_CLK_EN ;
 int SD_OUTPUT_EN ;
 int msleep (int) ;
 int rtsx_pci_card_power_off (struct rtsx_pcr*,int ) ;
 int rtsx_pci_card_pull_ctl_disable (struct rtsx_pcr*,int ) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int ) ;

int rtsx_sd_power_off_card3v3(struct rtsx_pcr *pcr)
{
 rtsx_pci_write_register(pcr, CARD_CLK_EN, SD_CLK_EN |
  MS_CLK_EN | SD40_CLK_EN, 0);
 rtsx_pci_write_register(pcr, CARD_OE, SD_OUTPUT_EN, 0);
 rtsx_pci_card_power_off(pcr, RTSX_SD_CARD);

 msleep(50);

 rtsx_pci_card_pull_ctl_disable(pcr, RTSX_SD_CARD);

 return 0;
}
