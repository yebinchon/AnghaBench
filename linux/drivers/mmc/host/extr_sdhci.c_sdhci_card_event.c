
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_host {int lock; int mmc; TYPE_2__* ops; } ;
struct mmc_host {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* card_event ) (struct sdhci_host*) ;} ;
struct TYPE_3__ {int (* get_cd ) (struct mmc_host*) ;} ;


 int ENOMEDIUM ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int mmc_hostname (int ) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int pr_err (char*,int ) ;
 int sdhci_do_reset (struct sdhci_host*,int ) ;
 int sdhci_error_out_mrqs (struct sdhci_host*,int ) ;
 scalar_t__ sdhci_has_requests (struct sdhci_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sdhci_host*) ;
 int stub2 (struct mmc_host*) ;

__attribute__((used)) static void sdhci_card_event(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);
 unsigned long flags;
 int present;


 if (host->ops->card_event)
  host->ops->card_event(host);

 present = mmc->ops->get_cd(mmc);

 spin_lock_irqsave(&host->lock, flags);


 if (sdhci_has_requests(host) && !present) {
  pr_err("%s: Card removed during transfer!\n",
   mmc_hostname(host->mmc));
  pr_err("%s: Resetting controller.\n",
   mmc_hostname(host->mmc));

  sdhci_do_reset(host, SDHCI_RESET_CMD);
  sdhci_do_reset(host, SDHCI_RESET_DATA);

  sdhci_error_out_mrqs(host, -ENOMEDIUM);
 }

 spin_unlock_irqrestore(&host->lock, flags);
}
