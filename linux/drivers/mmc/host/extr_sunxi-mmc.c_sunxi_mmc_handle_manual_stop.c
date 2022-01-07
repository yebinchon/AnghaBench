
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_mmc_host {int mmc; int lock; struct mmc_request* manual_stop_mrq; } ;
struct mmc_request {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_err (int ,char*) ;
 int mmc_dev (int ) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunxi_mmc_send_manual_stop (struct sunxi_mmc_host*,struct mmc_request*) ;

__attribute__((used)) static irqreturn_t sunxi_mmc_handle_manual_stop(int irq, void *dev_id)
{
 struct sunxi_mmc_host *host = dev_id;
 struct mmc_request *mrq;
 unsigned long iflags;

 spin_lock_irqsave(&host->lock, iflags);
 mrq = host->manual_stop_mrq;
 spin_unlock_irqrestore(&host->lock, iflags);

 if (!mrq) {
  dev_err(mmc_dev(host->mmc), "no request for manual stop\n");
  return IRQ_HANDLED;
 }

 dev_err(mmc_dev(host->mmc), "data error, sending stop command\n");
 sunxi_mmc_send_manual_stop(host, mrq);

 spin_lock_irqsave(&host->lock, iflags);
 host->manual_stop_mrq = ((void*)0);
 spin_unlock_irqrestore(&host->lock, iflags);

 mmc_request_done(host->mmc, mrq);

 return IRQ_HANDLED;
}
