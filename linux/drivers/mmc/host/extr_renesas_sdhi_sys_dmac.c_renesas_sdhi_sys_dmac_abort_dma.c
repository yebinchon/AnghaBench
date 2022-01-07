
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {scalar_t__ chan_tx; scalar_t__ chan_rx; } ;


 int dmaengine_terminate_all (scalar_t__) ;
 int renesas_sdhi_sys_dmac_enable_dma (struct tmio_mmc_host*,int) ;

__attribute__((used)) static void renesas_sdhi_sys_dmac_abort_dma(struct tmio_mmc_host *host)
{
 renesas_sdhi_sys_dmac_enable_dma(host, 0);

 if (host->chan_rx)
  dmaengine_terminate_all(host->chan_rx);
 if (host->chan_tx)
  dmaengine_terminate_all(host->chan_tx);

 renesas_sdhi_sys_dmac_enable_dma(host, 1);
}
