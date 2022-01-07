
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmio_mmc_host {scalar_t__ cmd; int mmc; struct mmc_request* mrq; scalar_t__ (* check_scc_error ) (struct tmio_mmc_host*) ;int lock; int delayed_reset_work; int * data; } ;
struct mmc_request {scalar_t__ sbc; TYPE_2__* cmd; TYPE_1__* data; } ;
struct TYPE_4__ {scalar_t__ error; } ;
struct TYPE_3__ {scalar_t__ error; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mmc_request*) ;
 int cancel_delayed_work (int *) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int mmc_retune_needed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct tmio_mmc_host*) ;
 int tmio_mmc_abort_dma (struct tmio_mmc_host*) ;
 int tmio_process_mrq (struct tmio_mmc_host*,struct mmc_request*) ;

__attribute__((used)) static void tmio_mmc_finish_request(struct tmio_mmc_host *host)
{
 struct mmc_request *mrq;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);

 mrq = host->mrq;
 if (IS_ERR_OR_NULL(mrq)) {
  spin_unlock_irqrestore(&host->lock, flags);
  return;
 }


 if (host->cmd != mrq->sbc) {
  host->cmd = ((void*)0);
  host->data = ((void*)0);
  host->mrq = ((void*)0);
 }

 cancel_delayed_work(&host->delayed_reset_work);

 spin_unlock_irqrestore(&host->lock, flags);

 if (mrq->cmd->error || (mrq->data && mrq->data->error))
  tmio_mmc_abort_dma(host);


 if (host->check_scc_error && host->check_scc_error(host))
  mmc_retune_needed(host->mmc);


 if (host->mrq && !mrq->cmd->error) {
  tmio_process_mrq(host, mrq);
  return;
 }

 mmc_request_done(host->mmc, mrq);
}
