
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hsmmc_host {int next_data; scalar_t__ use_dma; } ;
struct mmc_request {TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {scalar_t__ host_cookie; } ;


 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 struct dma_chan* omap_hsmmc_get_dma_chan (struct omap_hsmmc_host*,TYPE_1__*) ;
 scalar_t__ omap_hsmmc_pre_dma_transfer (struct omap_hsmmc_host*,TYPE_1__*,int *,struct dma_chan*) ;

__attribute__((used)) static void omap_hsmmc_pre_req(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);

 if (mrq->data->host_cookie) {
  mrq->data->host_cookie = 0;
  return ;
 }

 if (host->use_dma) {
  struct dma_chan *c = omap_hsmmc_get_dma_chan(host, mrq->data);

  if (omap_hsmmc_pre_dma_transfer(host, mrq->data,
      &host->next_data, c))
   mrq->data->host_cookie = 0;
 }
}
