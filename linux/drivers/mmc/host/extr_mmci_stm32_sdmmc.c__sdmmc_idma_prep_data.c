
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int mmc; } ;
struct mmc_data {int sg_len; int sg; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static int _sdmmc_idma_prep_data(struct mmci_host *host,
     struct mmc_data *data)
{
 int n_elem;

 n_elem = dma_map_sg(mmc_dev(host->mmc),
       data->sg,
       data->sg_len,
       mmc_get_dma_dir(data));

 if (!n_elem) {
  dev_err(mmc_dev(host->mmc), "dma_map_sg failed\n");
  return -EINVAL;
 }

 return 0;
}
