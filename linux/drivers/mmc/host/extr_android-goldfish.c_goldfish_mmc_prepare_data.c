
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {int blksz; int blocks; int sg_len; TYPE_1__* sg; } ;
struct goldfish_mmc_host {int dma_in_use; int virt_base; scalar_t__ dma_done; int sg_len; struct mmc_data* data; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {int length; } ;


 int DMA_TO_DEVICE ;
 int GOLDFISH_MMC_WRITE (struct goldfish_mmc_host*,int ,int) ;
 int MMC_BLOCK_COUNT ;
 int MMC_BLOCK_LENGTH ;
 int dma_map_sg (int ,TYPE_1__*,unsigned int,int) ;
 int mmc_dev (int ) ;
 int mmc_from_priv (struct goldfish_mmc_host*) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int sg_copy_to_buffer (TYPE_1__*,int,int ,int ) ;

__attribute__((used)) static void goldfish_mmc_prepare_data(struct goldfish_mmc_host *host,
          struct mmc_request *req)
{
 struct mmc_data *data = req->data;
 int block_size;
 unsigned sg_len;
 enum dma_data_direction dma_data_dir;

 host->data = data;
 if (data == ((void*)0)) {
  GOLDFISH_MMC_WRITE(host, MMC_BLOCK_LENGTH, 0);
  GOLDFISH_MMC_WRITE(host, MMC_BLOCK_COUNT, 0);
  host->dma_in_use = 0;
  return;
 }

 block_size = data->blksz;

 GOLDFISH_MMC_WRITE(host, MMC_BLOCK_COUNT, data->blocks - 1);
 GOLDFISH_MMC_WRITE(host, MMC_BLOCK_LENGTH, block_size - 1);





 sg_len = (data->blocks == 1) ? 1 : data->sg_len;

 dma_data_dir = mmc_get_dma_dir(data);

 host->sg_len = dma_map_sg(mmc_dev(mmc_from_priv(host)), data->sg,
      sg_len, dma_data_dir);
 host->dma_done = 0;
 host->dma_in_use = 1;

 if (dma_data_dir == DMA_TO_DEVICE) {




  sg_copy_to_buffer(data->sg, 1, host->virt_base,
    data->sg->length);
 }
}
