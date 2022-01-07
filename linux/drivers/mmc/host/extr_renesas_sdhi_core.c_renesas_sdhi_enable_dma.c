
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int bus_shift; } ;


 int CTL_DMA_ENABLE ;
 int DMA_ENABLE_DMASDRW ;
 int renesas_sdhi_sdbuf_width (struct tmio_mmc_host*,int) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int ) ;

__attribute__((used)) static void renesas_sdhi_enable_dma(struct tmio_mmc_host *host, bool enable)
{

 int width = (host->bus_shift == 2) ? 64 : 32;

 sd_ctrl_write16(host, CTL_DMA_ENABLE, enable ? DMA_ENABLE_DMASDRW : 0);
 renesas_sdhi_sdbuf_width(host, enable ? width : 16);
}
