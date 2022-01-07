
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {scalar_t__ chan_tx; scalar_t__ chan_rx; } ;
struct mmc_data {int flags; } ;


 int MMC_DATA_READ ;
 int renesas_sdhi_sys_dmac_start_dma_rx (struct tmio_mmc_host*) ;
 int renesas_sdhi_sys_dmac_start_dma_tx (struct tmio_mmc_host*) ;

__attribute__((used)) static void renesas_sdhi_sys_dmac_start_dma(struct tmio_mmc_host *host,
         struct mmc_data *data)
{
 if (data->flags & MMC_DATA_READ) {
  if (host->chan_rx)
   renesas_sdhi_sys_dmac_start_dma_rx(host);
 } else {
  if (host->chan_tx)
   renesas_sdhi_sys_dmac_start_dma_tx(host);
 }
}
