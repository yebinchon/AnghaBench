
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int quirks2; int quirks; int pwr; int mmc; } ;


 unsigned char MMC_POWER_OFF ;






 int SDHCI_POWER_180 ;
 int SDHCI_POWER_300 ;
 int SDHCI_POWER_330 ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_POWER_ON ;
 int SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON ;
 int SDHCI_QUIRK_DELAY_AFTER_POWER ;
 int SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER ;
 int SDHCI_QUIRK_SINGLE_POWER_WRITE ;
 int WARN (int,char*,int ,unsigned short) ;
 int mdelay (int) ;
 int mmc_hostname (int ) ;
 int sdhci_runtime_pm_bus_off (struct sdhci_host*) ;
 int sdhci_runtime_pm_bus_on (struct sdhci_host*) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;

void sdhci_set_power_noreg(struct sdhci_host *host, unsigned char mode,
      unsigned short vdd)
{
 u8 pwr = 0;

 if (mode != MMC_POWER_OFF) {
  switch (1 << vdd) {
  case 133:






  case 132:
   pwr = SDHCI_POWER_180;
   break;
  case 131:
  case 130:
   pwr = SDHCI_POWER_300;
   break;
  case 129:
  case 128:
   pwr = SDHCI_POWER_330;
   break;
  default:
   WARN(1, "%s: Invalid vdd %#x\n",
        mmc_hostname(host->mmc), vdd);
   break;
  }
 }

 if (host->pwr == pwr)
  return;

 host->pwr = pwr;

 if (pwr == 0) {
  sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);
  if (host->quirks2 & SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON)
   sdhci_runtime_pm_bus_off(host);
 } else {




  if (!(host->quirks & SDHCI_QUIRK_SINGLE_POWER_WRITE))
   sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);






  if (host->quirks & SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER)
   sdhci_writeb(host, pwr, SDHCI_POWER_CONTROL);

  pwr |= SDHCI_POWER_ON;

  sdhci_writeb(host, pwr, SDHCI_POWER_CONTROL);

  if (host->quirks2 & SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON)
   sdhci_runtime_pm_bus_on(host);





  if (host->quirks & SDHCI_QUIRK_DELAY_AFTER_POWER)
   mdelay(10);
 }
}
