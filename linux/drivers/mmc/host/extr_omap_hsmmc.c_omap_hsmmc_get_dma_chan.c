
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {struct dma_chan* rx_chan; struct dma_chan* tx_chan; } ;
struct mmc_data {int flags; } ;
struct dma_chan {int dummy; } ;


 int MMC_DATA_WRITE ;

__attribute__((used)) static struct dma_chan *omap_hsmmc_get_dma_chan(struct omap_hsmmc_host *host,
 struct mmc_data *data)
{
 return data->flags & MMC_DATA_WRITE ? host->tx_chan : host->rx_chan;
}
