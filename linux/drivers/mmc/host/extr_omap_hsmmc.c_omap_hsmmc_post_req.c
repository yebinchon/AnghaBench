
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {scalar_t__ use_dma; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ host_cookie; int sg_len; int sg; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 struct dma_chan* omap_hsmmc_get_dma_chan (struct omap_hsmmc_host*,struct mmc_data*) ;

__attribute__((used)) static void omap_hsmmc_post_req(struct mmc_host *mmc, struct mmc_request *mrq,
    int err)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 if (host->use_dma && data->host_cookie) {
  struct dma_chan *c = omap_hsmmc_get_dma_chan(host, data);

  dma_unmap_sg(c->device->dev, data->sg, data->sg_len,
        mmc_get_dma_dir(data));
  data->host_cookie = 0;
 }
}
