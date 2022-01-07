
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int sg_len; int sg; scalar_t__ sg_count; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 scalar_t__ meson_mmc_desc_chain_mode (struct mmc_data*) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static void meson_mmc_post_req(struct mmc_host *mmc, struct mmc_request *mrq,
          int err)
{
 struct mmc_data *data = mrq->data;

 if (data && meson_mmc_desc_chain_mode(data) && data->sg_count)
  dma_unmap_sg(mmc_dev(mmc), data->sg, data->sg_len,
        mmc_get_dma_dir(data));
}
