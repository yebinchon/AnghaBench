
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int lock; struct mmc_request* mrq; int last_req_ts; } ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct mmc_request*) ;
 int jiffies ;
 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int pr_debug (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_process_mrq (struct tmio_mmc_host*,struct mmc_request*) ;
 int wmb () ;

__attribute__((used)) static void tmio_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);

 if (host->mrq) {
  pr_debug("request not null\n");
  if (IS_ERR(host->mrq)) {
   spin_unlock_irqrestore(&host->lock, flags);
   mrq->cmd->error = -EAGAIN;
   mmc_request_done(mmc, mrq);
   return;
  }
 }

 host->last_req_ts = jiffies;
 wmb();
 host->mrq = mrq;

 spin_unlock_irqrestore(&host->lock, flags);

 tmio_process_mrq(host, mrq);
}
