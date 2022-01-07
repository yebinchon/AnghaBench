
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int dma_ch; int mmc; int * mrq; scalar_t__ use_dma; int irq_lock; scalar_t__ req_in_progress; } ;
struct mmc_request {scalar_t__ data; } ;


 int mmc_request_done (int ,struct mmc_request*) ;
 int omap_hsmmc_disable_irq (struct omap_hsmmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_hsmmc_request_done(struct omap_hsmmc_host *host, struct mmc_request *mrq)
{
 int dma_ch;
 unsigned long flags;

 spin_lock_irqsave(&host->irq_lock, flags);
 host->req_in_progress = 0;
 dma_ch = host->dma_ch;
 spin_unlock_irqrestore(&host->irq_lock, flags);

 omap_hsmmc_disable_irq(host);

 if (mrq->data && host->use_dma && dma_ch != -1)
  return;
 host->mrq = ((void*)0);
 mmc_request_done(host->mmc, mrq);
}
