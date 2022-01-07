
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {int mmc; scalar_t__ error; int lock; int * mrq; int req_timeout; } ;
struct mmc_request {scalar_t__ data; int cmd; } ;


 int cancel_delayed_work (int *) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int msdc_reset_hw (struct msdc_host*) ;
 int msdc_track_cmd_data (struct msdc_host*,int ,scalar_t__) ;
 int msdc_unprepare_data (struct msdc_host*,struct mmc_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void msdc_request_done(struct msdc_host *host, struct mmc_request *mrq)
{
 unsigned long flags;
 bool ret;

 ret = cancel_delayed_work(&host->req_timeout);
 if (!ret) {

  return;
 }
 spin_lock_irqsave(&host->lock, flags);
 host->mrq = ((void*)0);
 spin_unlock_irqrestore(&host->lock, flags);

 msdc_track_cmd_data(host, mrq->cmd, mrq->data);
 if (mrq->data)
  msdc_unprepare_data(host, mrq);
 if (host->error)
  msdc_reset_hw(host);
 mmc_request_done(host->mmc, mrq);
}
