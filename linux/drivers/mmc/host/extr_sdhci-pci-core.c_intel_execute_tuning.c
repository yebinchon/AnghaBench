
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_RESET_DATA ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_execute_tuning (struct mmc_host*,int ) ;
 int sdhci_reset (struct sdhci_host*,int ) ;

__attribute__((used)) static int intel_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 int err = sdhci_execute_tuning(mmc, opcode);
 struct sdhci_host *host = mmc_priv(mmc);

 if (err)
  return err;






 sdhci_reset(host, SDHCI_RESET_DATA);

 return 0;
}
