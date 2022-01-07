
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mmci_host {int lock; TYPE_1__* variant; struct mmc_request* mrq; } ;
struct mmc_request {TYPE_4__* cmd; TYPE_4__* sbc; TYPE_2__* data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {scalar_t__ datactrl_first; } ;


 int MMC_DATA_READ ;
 int WARN_ON (int ) ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int mmci_get_next_data (struct mmci_host*,TYPE_2__*) ;
 int mmci_start_command (struct mmci_host*,TYPE_4__*,int ) ;
 int mmci_start_data (struct mmci_host*,TYPE_2__*) ;
 int mmci_validate_data (struct mmci_host*,TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mmci_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct mmci_host *host = mmc_priv(mmc);
 unsigned long flags;

 WARN_ON(host->mrq != ((void*)0));

 mrq->cmd->error = mmci_validate_data(host, mrq->data);
 if (mrq->cmd->error) {
  mmc_request_done(mmc, mrq);
  return;
 }

 spin_lock_irqsave(&host->lock, flags);

 host->mrq = mrq;

 if (mrq->data)
  mmci_get_next_data(host, mrq->data);

 if (mrq->data &&
     (host->variant->datactrl_first || mrq->data->flags & MMC_DATA_READ))
  mmci_start_data(host, mrq->data);

 if (mrq->sbc)
  mmci_start_command(host, mrq->sbc, 0);
 else
  mmci_start_command(host, mrq->cmd, 0);

 spin_unlock_irqrestore(&host->lock, flags);
}
