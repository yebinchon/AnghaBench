
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int base; struct mmc_request* mrq; } ;
struct mmc_request {TYPE_1__* data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int blksz; int blocks; int timeout_clks; int timeout_ns; } ;


 int BLK ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 struct dma_chan* omap_hsmmc_get_dma_chan (struct omap_hsmmc_host*,TYPE_1__*) ;
 int set_data_timeout (struct omap_hsmmc_host*,int ,int ) ;

__attribute__((used)) static void omap_hsmmc_start_dma_transfer(struct omap_hsmmc_host *host)
{
 struct mmc_request *req = host->mrq;
 struct dma_chan *chan;

 if (!req->data)
  return;
 OMAP_HSMMC_WRITE(host->base, BLK, (req->data->blksz)
    | (req->data->blocks << 16));
 set_data_timeout(host, req->data->timeout_ns,
    req->data->timeout_clks);
 chan = omap_hsmmc_get_dma_chan(host, req->data);
 dma_async_issue_pending(chan);
}
