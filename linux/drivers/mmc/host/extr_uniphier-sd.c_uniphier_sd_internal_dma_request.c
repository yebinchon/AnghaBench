
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {int caps; } ;
struct tmio_mmc_host {int dma_issue; void* chan_tx; void* chan_rx; } ;
struct tmio_mmc_data {int dummy; } ;


 int UNIPHIER_SD_CAP_BROKEN_DMA_RX ;
 int tasklet_init (int *,int ,unsigned long) ;
 int uniphier_sd_internal_dma_issue ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void uniphier_sd_internal_dma_request(struct tmio_mmc_host *host,
          struct tmio_mmc_data *pdata)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);





 if (!(priv->caps & UNIPHIER_SD_CAP_BROKEN_DMA_RX))
  host->chan_rx = (void *)0xdeadbeaf;

 host->chan_tx = (void *)0xdeadbeaf;

 tasklet_init(&host->dma_issue, uniphier_sd_internal_dma_issue,
       (unsigned long)host);
}
