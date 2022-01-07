
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int mmc; } ;
struct mmc_data {int sg_len; int sg; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static void sdmmc_idma_unprep_data(struct mmci_host *host,
       struct mmc_data *data, int err)
{
 dma_unmap_sg(mmc_dev(host->mmc), data->sg, data->sg_len,
       mmc_get_dma_dir(data));
}
