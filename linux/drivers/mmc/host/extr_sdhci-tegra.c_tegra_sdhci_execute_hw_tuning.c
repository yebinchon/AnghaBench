
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int tuning_err; } ;
struct mmc_host {int dummy; } ;


 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_execute_tuning (struct mmc_host*,int ) ;
 int tegra_sdhci_post_tuning (struct sdhci_host*) ;

__attribute__((used)) static int tegra_sdhci_execute_hw_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct sdhci_host *host = mmc_priv(mmc);
 int err;

 err = sdhci_execute_tuning(mmc, opcode);
 if (!err && !host->tuning_err)
  tegra_sdhci_post_tuning(host);

 return err;
}
