
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ timing; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_execute_tuning (struct mmc_host*,int ) ;

__attribute__((used)) static int usdhc_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct sdhci_host *host = mmc_priv(mmc);





 if (host->timing == MMC_TIMING_UHS_DDR50)
  return 0;

 return sdhci_execute_tuning(mmc, opcode);
}
