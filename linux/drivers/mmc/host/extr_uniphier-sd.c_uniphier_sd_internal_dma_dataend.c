
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {int dma_dir; } ;
struct tmio_mmc_host {int sg_ptr; int mmc; } ;


 int dma_unmap_sg (int ,int ,int,int ) ;
 int mmc_dev (int ) ;
 int tmio_mmc_do_data_irq (struct tmio_mmc_host*) ;
 int uniphier_sd_dma_endisable (struct tmio_mmc_host*,int ) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void uniphier_sd_internal_dma_dataend(struct tmio_mmc_host *host)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);

 uniphier_sd_dma_endisable(host, 0);
 dma_unmap_sg(mmc_dev(host->mmc), host->sg_ptr, 1, priv->dma_dir);

 tmio_mmc_do_data_irq(host);
}
