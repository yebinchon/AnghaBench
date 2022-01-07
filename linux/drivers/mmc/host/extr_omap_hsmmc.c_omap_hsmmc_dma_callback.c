
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int dma_ch; int req_in_progress; int mmc; struct mmc_request* mrq; int irq_lock; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {int sg_len; int sg; int host_cookie; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 struct dma_chan* omap_hsmmc_get_dma_chan (struct omap_hsmmc_host*,struct mmc_data*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void omap_hsmmc_dma_callback(void *param)
{
 struct omap_hsmmc_host *host = param;
 struct dma_chan *chan;
 struct mmc_data *data;
 int req_in_progress;

 spin_lock_irq(&host->irq_lock);
 if (host->dma_ch < 0) {
  spin_unlock_irq(&host->irq_lock);
  return;
 }

 data = host->mrq->data;
 chan = omap_hsmmc_get_dma_chan(host, data);
 if (!data->host_cookie)
  dma_unmap_sg(chan->device->dev,
        data->sg, data->sg_len,
        mmc_get_dma_dir(data));

 req_in_progress = host->req_in_progress;
 host->dma_ch = -1;
 spin_unlock_irq(&host->irq_lock);


 if (!req_in_progress) {
  struct mmc_request *mrq = host->mrq;

  host->mrq = ((void*)0);
  mmc_request_done(host->mmc, mrq);
 }
}
