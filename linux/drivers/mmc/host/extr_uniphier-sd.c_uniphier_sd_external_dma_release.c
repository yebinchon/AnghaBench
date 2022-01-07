
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {scalar_t__ chan; } ;
struct tmio_mmc_host {int dummy; } ;


 int dma_release_channel (scalar_t__) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void uniphier_sd_external_dma_release(struct tmio_mmc_host *host)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);

 if (priv->chan)
  dma_release_channel(priv->chan);
}
