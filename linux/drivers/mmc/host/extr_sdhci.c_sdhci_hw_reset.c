
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {TYPE_1__* ops; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* hw_reset ) (struct sdhci_host*) ;} ;


 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int stub1 (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_hw_reset(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);

 if (host->ops && host->ops->hw_reset)
  host->ops->hw_reset(host);
}
