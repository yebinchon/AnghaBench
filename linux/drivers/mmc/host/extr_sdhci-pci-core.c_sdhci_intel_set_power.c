
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int dummy; } ;


 unsigned char MMC_POWER_OFF ;
 int SDHCI_INTEL_PWR_TIMEOUT_CNT ;
 int SDHCI_INTEL_PWR_TIMEOUT_UDELAY ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_POWER_ON ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_set_power (struct sdhci_host*,unsigned char,unsigned short) ;
 int sdhci_writeb (struct sdhci_host*,int,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void sdhci_intel_set_power(struct sdhci_host *host, unsigned char mode,
      unsigned short vdd)
{
 int cntr;
 u8 reg;

 sdhci_set_power(host, mode, vdd);

 if (mode == MMC_POWER_OFF)
  return;





 for (cntr = 0; cntr < SDHCI_INTEL_PWR_TIMEOUT_CNT; cntr++) {
  reg = sdhci_readb(host, SDHCI_POWER_CONTROL);
  if (reg & SDHCI_POWER_ON)
   break;
  udelay(SDHCI_INTEL_PWR_TIMEOUT_UDELAY);
  reg |= SDHCI_POWER_ON;
  sdhci_writeb(host, reg, SDHCI_POWER_CONTROL);
 }
}
