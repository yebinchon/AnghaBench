
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int dummy; } ;
struct dma_chan {int dummy; } ;
struct bcm2835_host {TYPE_1__* pdev; struct dma_chan* dma_chan; int * dma_desc; int * data; int * cmd; struct mmc_request* mrq; int timeout_work; } ;
struct TYPE_2__ {int dev; } ;


 int cancel_delayed_work (int *) ;
 int dev_err (int *,char*,int) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 int mmc_from_priv (struct bcm2835_host*) ;
 int mmc_request_done (int ,struct mmc_request*) ;

__attribute__((used)) static void bcm2835_finish_request(struct bcm2835_host *host)
{
 struct dma_chan *terminate_chan = ((void*)0);
 struct mmc_request *mrq;

 cancel_delayed_work(&host->timeout_work);

 mrq = host->mrq;

 host->mrq = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);

 host->dma_desc = ((void*)0);
 terminate_chan = host->dma_chan;
 host->dma_chan = ((void*)0);

 if (terminate_chan) {
  int err = dmaengine_terminate_all(terminate_chan);

  if (err)
   dev_err(&host->pdev->dev,
    "failed to terminate DMA (%d)\n", err);
 }

 mmc_request_done(mmc_from_priv(host), mrq);
}
