
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int sg_count; int sg_len; int sg; int host_cookie; } ;


 int SD_EMMC_PRE_REQ_DONE ;
 int dev_err (int ,char*) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 int meson_mmc_desc_chain_mode (struct mmc_data*) ;
 int meson_mmc_get_transfer_mode (struct mmc_host*,struct mmc_request*) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static void meson_mmc_pre_req(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct mmc_data *data = mrq->data;

 if (!data)
  return;

 meson_mmc_get_transfer_mode(mmc, mrq);
 data->host_cookie |= SD_EMMC_PRE_REQ_DONE;

 if (!meson_mmc_desc_chain_mode(data))
  return;

 data->sg_count = dma_map_sg(mmc_dev(mmc), data->sg, data->sg_len,
                                   mmc_get_dma_dir(data));
 if (!data->sg_count)
  dev_err(mmc_dev(mmc), "dma_map_sg failed");
}
