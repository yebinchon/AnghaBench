
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ host_cookie; int sg_len; int sg; } ;
struct alcor_sdmmc_host {int dev; } ;


 scalar_t__ COOKIE_MAPPED ;
 scalar_t__ COOKIE_UNMAPPED ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 struct alcor_sdmmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void alcor_post_req(struct mmc_host *mmc,
       struct mmc_request *mrq,
       int err)
{
 struct alcor_sdmmc_host *host = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 if (!data)
  return;

 if (data->host_cookie == COOKIE_MAPPED) {
  dma_unmap_sg(host->dev,
        data->sg,
        data->sg_len,
        mmc_get_dma_dir(data));
 }

 data->host_cookie = COOKIE_UNMAPPED;
}
