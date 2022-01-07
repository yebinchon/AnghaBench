
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int bytes_xfered; int blocks; int blksz; int sg_len; int sg; scalar_t__ error; } ;
struct cvm_mmc_host {int dev; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 int get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static int finish_dma_single(struct cvm_mmc_host *host, struct mmc_data *data)
{
 data->bytes_xfered = data->blocks * data->blksz;
 data->error = 0;
 dma_unmap_sg(host->dev, data->sg, data->sg_len, get_dma_dir(data));
 return 1;
}
