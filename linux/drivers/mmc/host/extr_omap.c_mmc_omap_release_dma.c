
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_omap_host {int sg_len; struct dma_chan* dma_rx; struct dma_chan* dma_tx; int mmc; } ;
struct mmc_data {int flags; int sg; scalar_t__ bytes_xfered; scalar_t__ error; } ;
struct dma_chan {TYPE_1__* device; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct device* dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MMC_DATA_WRITE ;
 int dma_unmap_sg (struct device*,int ,int ,int) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 struct device* mmc_dev (int ) ;

__attribute__((used)) static void
mmc_omap_release_dma(struct mmc_omap_host *host, struct mmc_data *data,
       int abort)
{
 enum dma_data_direction dma_data_dir;
 struct device *dev = mmc_dev(host->mmc);
 struct dma_chan *c;

 if (data->flags & MMC_DATA_WRITE) {
  dma_data_dir = DMA_TO_DEVICE;
  c = host->dma_tx;
 } else {
  dma_data_dir = DMA_FROM_DEVICE;
  c = host->dma_rx;
 }
 if (c) {
  if (data->error) {
   dmaengine_terminate_all(c);

   data->bytes_xfered = 0;
  }
  dev = c->device->dev;
 }
 dma_unmap_sg(dev, data->sg, host->sg_len, dma_data_dir);
}
