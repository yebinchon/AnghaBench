
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int mmc; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ host_cookie; int sg_len; int sg; } ;


 scalar_t__ COOKIE_UNMAPPED ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void sdhci_post_req(struct mmc_host *mmc, struct mmc_request *mrq,
    int err)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 if (data->host_cookie != COOKIE_UNMAPPED)
  dma_unmap_sg(mmc_dev(host->mmc), data->sg, data->sg_len,
        mmc_get_dma_dir(data));

 data->host_cookie = COOKIE_UNMAPPED;
}
