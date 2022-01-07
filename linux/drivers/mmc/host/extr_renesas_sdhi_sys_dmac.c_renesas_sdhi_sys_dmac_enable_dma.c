
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int chan_rx; int chan_tx; } ;
struct TYPE_2__ {int (* enable ) (struct tmio_mmc_host*,int) ;} ;
struct renesas_sdhi {TYPE_1__ dma_priv; } ;


 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int stub1 (struct tmio_mmc_host*,int) ;

__attribute__((used)) static void renesas_sdhi_sys_dmac_enable_dma(struct tmio_mmc_host *host,
          bool enable)
{
 struct renesas_sdhi *priv = host_to_priv(host);

 if (!host->chan_tx || !host->chan_rx)
  return;

 if (priv->dma_priv.enable)
  priv->dma_priv.enable(host, enable);
}
