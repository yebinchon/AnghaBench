
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {scalar_t__ chan; } ;
struct tmio_mmc_host {int dummy; } ;


 int dmaengine_terminate_sync (scalar_t__) ;
 int uniphier_sd_dma_endisable (struct tmio_mmc_host*,int ) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void uniphier_sd_external_dma_abort(struct tmio_mmc_host *host)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);

 uniphier_sd_dma_endisable(host, 0);

 if (priv->chan)
  dmaengine_terminate_sync(priv->chan);
}
