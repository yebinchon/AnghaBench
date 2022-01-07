
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {int chan; } ;
struct tmio_mmc_host {int dummy; } ;


 int dma_async_issue_pending (int ) ;
 int uniphier_sd_dma_endisable (struct tmio_mmc_host*,int) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void uniphier_sd_external_dma_issue(unsigned long arg)
{
 struct tmio_mmc_host *host = (void *)arg;
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);

 uniphier_sd_dma_endisable(host, 1);
 dma_async_issue_pending(priv->chan);
}
