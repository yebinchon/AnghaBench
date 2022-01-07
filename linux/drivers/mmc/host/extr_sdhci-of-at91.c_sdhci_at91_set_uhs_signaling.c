
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 unsigned int MMC_TIMING_MMC_DDR52 ;
 int SDMMC_MC1R ;
 int SDMMC_MC1R_DDR ;
 int sdhci_set_uhs_signaling (struct sdhci_host*,unsigned int) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_at91_set_uhs_signaling(struct sdhci_host *host,
      unsigned int timing)
{
 if (timing == MMC_TIMING_MMC_DDR52)
  sdhci_writeb(host, SDMMC_MC1R_DDR, SDMMC_MC1R);
 sdhci_set_uhs_signaling(host, timing);
}
