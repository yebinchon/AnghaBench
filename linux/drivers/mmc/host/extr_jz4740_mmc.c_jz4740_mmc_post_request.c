
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ host_cookie; } ;
struct jz4740_mmc_host {int dummy; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ COOKIE_UNMAPPED ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 int jz4740_mmc_dma_unmap (struct jz4740_mmc_host*,struct mmc_data*) ;
 struct dma_chan* jz4740_mmc_get_dma_chan (struct jz4740_mmc_host*,struct mmc_data*) ;
 struct jz4740_mmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void jz4740_mmc_post_request(struct mmc_host *mmc,
        struct mmc_request *mrq,
        int err)
{
 struct jz4740_mmc_host *host = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 if (data && data->host_cookie != COOKIE_UNMAPPED)
  jz4740_mmc_dma_unmap(host, data);

 if (err) {
  struct dma_chan *chan = jz4740_mmc_get_dma_chan(host, data);

  dmaengine_terminate_all(chan);
 }
}
