
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_data {int flags; int sg_len; int sg; } ;
struct dw_mci {scalar_t__ use_dma; int tasklet; int pending_events; TYPE_2__* dma_ops; TYPE_1__* slot; int dev; struct mmc_data* data; } ;
struct TYPE_4__ {int (* cleanup ) (struct dw_mci*) ;} ;
struct TYPE_3__ {int mmc; } ;


 int DMA_FROM_DEVICE ;
 int EVENT_XFER_COMPLETE ;
 int MMC_DATA_READ ;
 scalar_t__ TRANS_MODE_EDMAC ;
 int dev_vdbg (int ,char*) ;
 int dma_sync_sg_for_cpu (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct dw_mci*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void dw_mci_dmac_complete_dma(void *arg)
{
 struct dw_mci *host = arg;
 struct mmc_data *data = host->data;

 dev_vdbg(host->dev, "DMA complete\n");

 if ((host->use_dma == TRANS_MODE_EDMAC) &&
     data && (data->flags & MMC_DATA_READ))

  dma_sync_sg_for_cpu(mmc_dev(host->slot->mmc),
        data->sg,
        data->sg_len,
        DMA_FROM_DEVICE);

 host->dma_ops->cleanup(host);





 if (data) {
  set_bit(EVENT_XFER_COMPLETE, &host->pending_events);
  tasklet_schedule(&host->tasklet);
 }
}
