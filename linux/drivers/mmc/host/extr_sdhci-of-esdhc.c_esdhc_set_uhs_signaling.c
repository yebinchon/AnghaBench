
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 unsigned int MMC_TIMING_MMC_HS400 ;
 int esdhc_tuning_block_enable (struct sdhci_host*,int) ;
 int sdhci_set_uhs_signaling (struct sdhci_host*,unsigned int) ;

__attribute__((used)) static void esdhc_set_uhs_signaling(struct sdhci_host *host,
       unsigned int timing)
{
 if (timing == MMC_TIMING_MMC_HS400)
  esdhc_tuning_block_enable(host, 1);
 else
  sdhci_set_uhs_signaling(host, timing);
}
