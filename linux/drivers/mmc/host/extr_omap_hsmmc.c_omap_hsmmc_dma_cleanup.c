
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_hsmmc_host {int dma_ch; TYPE_2__* data; scalar_t__ use_dma; int irq_lock; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_5__ {int error; scalar_t__ host_cookie; int sg_len; int sg; } ;
struct TYPE_4__ {int dev; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 int mmc_get_dma_dir (TYPE_2__*) ;
 struct dma_chan* omap_hsmmc_get_dma_chan (struct omap_hsmmc_host*,TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_hsmmc_dma_cleanup(struct omap_hsmmc_host *host, int errno)
{
 int dma_ch;
 unsigned long flags;

 host->data->error = errno;

 spin_lock_irqsave(&host->irq_lock, flags);
 dma_ch = host->dma_ch;
 host->dma_ch = -1;
 spin_unlock_irqrestore(&host->irq_lock, flags);

 if (host->use_dma && dma_ch != -1) {
  struct dma_chan *chan = omap_hsmmc_get_dma_chan(host, host->data);

  dmaengine_terminate_all(chan);
  dma_unmap_sg(chan->device->dev,
   host->data->sg, host->data->sg_len,
   mmc_get_dma_dir(host->data));

  host->data->host_cookie = 0;
 }
 host->data = ((void*)0);
}
