
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {int dma_done; int dma_lock; scalar_t__ brs_received; } ;
struct mmc_data {int dummy; } ;


 int mmc_omap_xfer_done (struct mmc_omap_host*,struct mmc_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
mmc_omap_dma_done(struct mmc_omap_host *host, struct mmc_data *data)
{
 unsigned long flags;
 int done;

 done = 0;
 spin_lock_irqsave(&host->dma_lock, flags);
 if (host->brs_received)
  done = 1;
 else
  host->dma_done = 1;
 spin_unlock_irqrestore(&host->dma_lock, flags);
 if (done)
  mmc_omap_xfer_done(host, data);
}
