
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; } ;
struct jz4740_mmc_host {struct dma_chan* dma_tx; struct dma_chan* dma_rx; } ;
struct dma_chan {int dummy; } ;


 int MMC_DATA_READ ;

__attribute__((used)) static inline struct dma_chan *jz4740_mmc_get_dma_chan(struct jz4740_mmc_host *host,
             struct mmc_data *data)
{
 return (data->flags & MMC_DATA_READ) ? host->dma_rx : host->dma_tx;
}
