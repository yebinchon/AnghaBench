
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_data {int stop; int mrq; TYPE_2__* sg; } ;
struct goldfish_mmc_host {int * mrq; scalar_t__ sg_len; TYPE_1__* data; int virt_base; scalar_t__ dma_in_use; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_4__ {int bytes_xfered; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_sg (int ,TYPE_2__*,scalar_t__,int) ;
 int goldfish_mmc_start_command (struct goldfish_mmc_host*,int ) ;
 int mmc_dev (int ) ;
 int mmc_from_priv (struct goldfish_mmc_host*) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int mmc_request_done (int ,int ) ;
 int sg_copy_from_buffer (TYPE_2__*,int,int ,scalar_t__) ;

__attribute__((used)) static void goldfish_mmc_xfer_done(struct goldfish_mmc_host *host,
       struct mmc_data *data)
{
 if (host->dma_in_use) {
  enum dma_data_direction dma_data_dir;

  dma_data_dir = mmc_get_dma_dir(data);

  if (dma_data_dir == DMA_FROM_DEVICE) {




   sg_copy_from_buffer(data->sg, 1, host->virt_base,
     data->sg->length);
  }
  host->data->bytes_xfered += data->sg->length;
  dma_unmap_sg(mmc_dev(mmc_from_priv(host)), data->sg,
        host->sg_len, dma_data_dir);
 }

 host->data = ((void*)0);
 host->sg_len = 0;







 if (!data->stop) {
  host->mrq = ((void*)0);
  mmc_request_done(mmc_from_priv(host), data->mrq);
  return;
 }

 goldfish_mmc_start_command(host, data->stop);
}
