
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xmmc_host {int flags; int rx_chan; int tx_chan; } ;


 int HOST_F_DMA ;
 int au1xxx_dbdma_chan_free (int ) ;

__attribute__((used)) static void au1xmmc_dbdma_shutdown(struct au1xmmc_host *host)
{
 if (host->flags & HOST_F_DMA) {
  host->flags &= ~HOST_F_DMA;
  au1xxx_dbdma_chan_free(host->tx_chan);
  au1xxx_dbdma_chan_free(host->rx_chan);
 }
}
