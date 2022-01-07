
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ timing; scalar_t__ tuning_mode; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 scalar_t__ SDHCI_TUNING_MODE_1 ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_execute_tuning (struct mmc_host*,int ) ;
 int xenon_retune_setup (struct sdhci_host*) ;

__attribute__((used)) static int xenon_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct sdhci_host *host = mmc_priv(mmc);

 if (host->timing == MMC_TIMING_UHS_DDR50 ||
  host->timing == MMC_TIMING_MMC_DDR52)
  return 0;






 if (host->tuning_mode != SDHCI_TUNING_MODE_1)
  xenon_retune_setup(host);

 return sdhci_execute_tuning(mmc, opcode);
}
