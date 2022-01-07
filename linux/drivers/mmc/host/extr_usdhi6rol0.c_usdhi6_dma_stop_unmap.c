
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usdhi6_host {int dma_active; TYPE_4__* chan_tx; TYPE_2__* chan_rx; TYPE_5__* mrq; } ;
struct mmc_data {int flags; int sg_len; int sg; } ;
struct TYPE_10__ {struct mmc_data* data; } ;
struct TYPE_9__ {TYPE_3__* device; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_6__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MMC_DATA_READ ;
 int USDHI6_CC_EXT_MODE ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int usdhi6_write (struct usdhi6_host*,int ,int ) ;

__attribute__((used)) static void usdhi6_dma_stop_unmap(struct usdhi6_host *host)
{
 struct mmc_data *data = host->mrq->data;

 if (!host->dma_active)
  return;

 usdhi6_write(host, USDHI6_CC_EXT_MODE, 0);
 host->dma_active = 0;

 if (data->flags & MMC_DATA_READ)
  dma_unmap_sg(host->chan_rx->device->dev, data->sg,
        data->sg_len, DMA_FROM_DEVICE);
 else
  dma_unmap_sg(host->chan_tx->device->dev, data->sg,
        data->sg_len, DMA_TO_DEVICE);
}
