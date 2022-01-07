
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {struct dma_chan* chan; } ;
struct tmio_mmc_host {int dma_issue; struct dma_chan* chan_tx; struct dma_chan* chan_rx; int mmc; } ;
struct tmio_mmc_data {int dummy; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ IS_ERR (struct dma_chan*) ;
 int dev_warn (int ,char*) ;
 struct dma_chan* dma_request_chan (int ,char*) ;
 int mmc_dev (int ) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int uniphier_sd_external_dma_issue ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void uniphier_sd_external_dma_request(struct tmio_mmc_host *host,
          struct tmio_mmc_data *pdata)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);
 struct dma_chan *chan;

 chan = dma_request_chan(mmc_dev(host->mmc), "rx-tx");
 if (IS_ERR(chan)) {
  dev_warn(mmc_dev(host->mmc),
    "failed to request DMA channel. falling back to PIO\n");
  return;
 }


 priv->chan = chan;
 host->chan_rx = chan;
 host->chan_tx = chan;

 tasklet_init(&host->dma_issue, uniphier_sd_external_dma_issue,
       (unsigned long)host);
}
