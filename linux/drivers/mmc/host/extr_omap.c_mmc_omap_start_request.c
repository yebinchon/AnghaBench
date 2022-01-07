
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int cmd; } ;
struct mmc_omap_host {struct dma_chan* dma_rx; struct dma_chan* dma_tx; TYPE_1__* data; scalar_t__ dma_in_use; struct mmc_request* mrq; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int BUG_ON (int ) ;
 int MMC_DATA_WRITE ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int mmc_omap_prepare_data (struct mmc_omap_host*,struct mmc_request*) ;
 int mmc_omap_start_command (struct mmc_omap_host*,int ) ;

__attribute__((used)) static void mmc_omap_start_request(struct mmc_omap_host *host,
       struct mmc_request *req)
{
 BUG_ON(host->mrq != ((void*)0));

 host->mrq = req;


 mmc_omap_prepare_data(host, req);
 mmc_omap_start_command(host, req->cmd);
 if (host->dma_in_use) {
  struct dma_chan *c = host->data->flags & MMC_DATA_WRITE ?
    host->dma_tx : host->dma_rx;

  dma_async_issue_pending(c);
 }
}
