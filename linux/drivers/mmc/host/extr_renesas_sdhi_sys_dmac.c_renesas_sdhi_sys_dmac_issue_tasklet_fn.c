
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int lock; struct dma_chan* chan_tx; struct dma_chan* chan_rx; TYPE_1__* data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int MMC_DATA_READ ;
 int TMIO_STAT_DATAEND ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tmio_mmc_enable_mmc_irqs (struct tmio_mmc_host*,int ) ;

__attribute__((used)) static void renesas_sdhi_sys_dmac_issue_tasklet_fn(unsigned long priv)
{
 struct tmio_mmc_host *host = (struct tmio_mmc_host *)priv;
 struct dma_chan *chan = ((void*)0);

 spin_lock_irq(&host->lock);

 if (host->data) {
  if (host->data->flags & MMC_DATA_READ)
   chan = host->chan_rx;
  else
   chan = host->chan_tx;
 }

 spin_unlock_irq(&host->lock);

 tmio_mmc_enable_mmc_irqs(host, TMIO_STAT_DATAEND);

 if (chan)
  dma_async_issue_pending(chan);
}
