
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;


 int CTL_DMA_ENABLE ;
 int DMA_ENABLE_DMASDRW ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int ) ;

__attribute__((used)) static void uniphier_sd_dma_endisable(struct tmio_mmc_host *host, int enable)
{
 sd_ctrl_write16(host, CTL_DMA_ENABLE, enable ? DMA_ENABLE_DMASDRW : 0);
}
