
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_host {unsigned int bounce_buffer_size; TYPE_1__* mmc; int bounce_addr; scalar_t__ bounce_buffer; } ;
struct mmc_data {int host_cookie; int sg_count; unsigned int blksz; unsigned int blocks; int sg_len; int sg; } ;
struct TYPE_3__ {int parent; } ;


 int COOKIE_PRE_MAPPED ;
 scalar_t__ DMA_TO_DEVICE ;
 int EIO ;
 int ENOSPC ;
 int dma_map_sg (int ,int ,int ,scalar_t__) ;
 int dma_sync_single_for_device (int ,int ,unsigned int,scalar_t__) ;
 int mmc_dev (TYPE_1__*) ;
 scalar_t__ mmc_get_dma_dir (struct mmc_data*) ;
 int mmc_hostname (TYPE_1__*) ;
 int pr_err (char*,int ,unsigned int,unsigned int) ;
 int sg_copy_to_buffer (int ,int ,scalar_t__,unsigned int) ;

__attribute__((used)) static int sdhci_pre_dma_transfer(struct sdhci_host *host,
      struct mmc_data *data, int cookie)
{
 int sg_count;





 if (data->host_cookie == COOKIE_PRE_MAPPED)
  return data->sg_count;


 if (host->bounce_buffer) {
  unsigned int length = data->blksz * data->blocks;

  if (length > host->bounce_buffer_size) {
   pr_err("%s: asked for transfer of %u bytes exceeds bounce buffer %u bytes\n",
          mmc_hostname(host->mmc), length,
          host->bounce_buffer_size);
   return -EIO;
  }
  if (mmc_get_dma_dir(data) == DMA_TO_DEVICE) {

   sg_copy_to_buffer(data->sg, data->sg_len,
       host->bounce_buffer,
       length);
  }

  dma_sync_single_for_device(host->mmc->parent,
        host->bounce_addr,
        host->bounce_buffer_size,
        mmc_get_dma_dir(data));

  sg_count = 1;
 } else {

  sg_count = dma_map_sg(mmc_dev(host->mmc),
          data->sg, data->sg_len,
          mmc_get_dma_dir(data));
 }

 if (sg_count == 0)
  return -ENOSPC;

 data->sg_count = sg_count;
 data->host_cookie = cookie;

 return sg_count;
}
