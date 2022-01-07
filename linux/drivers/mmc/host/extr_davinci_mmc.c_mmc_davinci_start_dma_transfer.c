
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_davinci_host {int sg_len; int do_dma; int mmc; } ;
struct mmc_data {int sg_len; scalar_t__ sg; } ;


 int dma_map_sg (int ,scalar_t__,int ,int ) ;
 int dma_unmap_sg (int ,scalar_t__,int ,int ) ;
 int mmc_davinci_send_dma_request (struct mmc_davinci_host*,struct mmc_data*) ;
 int mmc_dev (int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int rw_threshold ;
 int sg_dma_len (scalar_t__) ;

__attribute__((used)) static int mmc_davinci_start_dma_transfer(struct mmc_davinci_host *host,
  struct mmc_data *data)
{
 int i;
 int mask = rw_threshold - 1;
 int ret = 0;

 host->sg_len = dma_map_sg(mmc_dev(host->mmc), data->sg, data->sg_len,
      mmc_get_dma_dir(data));


 for (i = 0; i < host->sg_len; i++) {
  if (sg_dma_len(data->sg + i) & mask) {
   dma_unmap_sg(mmc_dev(host->mmc),
         data->sg, data->sg_len,
         mmc_get_dma_dir(data));
   return -1;
  }
 }

 host->do_dma = 1;
 ret = mmc_davinci_send_dma_request(host, data);

 return ret;
}
