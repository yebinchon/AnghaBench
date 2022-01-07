
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdhci_host {int flags; int lock; } ;
struct mmc_request {TYPE_3__* cmd; TYPE_3__* sbc; int * stop; TYPE_2__* data; } ;
struct mmc_host {TYPE_1__* ops; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_5__ {int * stop; } ;
struct TYPE_4__ {int (* get_cd ) (struct mmc_host*) ;} ;


 int ENOMEDIUM ;
 int SDHCI_AUTO_CMD23 ;
 int SDHCI_DEVICE_DEAD ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 scalar_t__ sdhci_auto_cmd12 (struct sdhci_host*,struct mmc_request*) ;
 int sdhci_finish_mrq (struct sdhci_host*,struct mmc_request*) ;
 int sdhci_led_activate (struct sdhci_host*) ;
 int sdhci_send_command (struct sdhci_host*,TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mmc_host*) ;

void sdhci_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct sdhci_host *host;
 int present;
 unsigned long flags;

 host = mmc_priv(mmc);


 present = mmc->ops->get_cd(mmc);

 spin_lock_irqsave(&host->lock, flags);

 sdhci_led_activate(host);





 if (sdhci_auto_cmd12(host, mrq)) {
  if (mrq->stop) {
   mrq->data->stop = ((void*)0);
   mrq->stop = ((void*)0);
  }
 }

 if (!present || host->flags & SDHCI_DEVICE_DEAD) {
  mrq->cmd->error = -ENOMEDIUM;
  sdhci_finish_mrq(host, mrq);
 } else {
  if (mrq->sbc && !(host->flags & SDHCI_AUTO_CMD23))
   sdhci_send_command(host, mrq->sbc);
  else
   sdhci_send_command(host, mrq->cmd);
 }

 spin_unlock_irqrestore(&host->lock, flags);
}
