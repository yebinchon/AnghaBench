
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int cqe_on; scalar_t__ clock; scalar_t__ v4_mode; struct mmc_host* mmc; } ;
struct mmc_host {int ios; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_ios ) (struct mmc_host*,int *) ;} ;


 int SDHCI_RESET_ALL ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int sdhci_do_enable_v4_mode (struct sdhci_host*) ;
 int sdhci_do_reset (struct sdhci_host*,int) ;
 int sdhci_set_default_irqs (struct sdhci_host*) ;
 int stub1 (struct mmc_host*,int *) ;

__attribute__((used)) static void sdhci_init(struct sdhci_host *host, int soft)
{
 struct mmc_host *mmc = host->mmc;

 if (soft)
  sdhci_do_reset(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
 else
  sdhci_do_reset(host, SDHCI_RESET_ALL);

 if (host->v4_mode)
  sdhci_do_enable_v4_mode(host);

 sdhci_set_default_irqs(host);

 host->cqe_on = 0;

 if (soft) {

  host->clock = 0;
  mmc->ops->set_ios(mmc, &mmc->ios);
 }
}
