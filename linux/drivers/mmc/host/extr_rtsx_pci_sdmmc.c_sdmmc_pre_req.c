
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_sdmmc {int cookie_sg_count; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ host_cookie; } ;


 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,scalar_t__) ;
 struct realtek_pci_sdmmc* mmc_priv (struct mmc_host*) ;
 int sd_pre_dma_transfer (struct realtek_pci_sdmmc*,struct mmc_data*,int) ;
 int sdmmc_dev (struct realtek_pci_sdmmc*) ;

__attribute__((used)) static void sdmmc_pre_req(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct realtek_pci_sdmmc *host = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 if (data->host_cookie) {
  dev_err(sdmmc_dev(host),
   "error: reset data->host_cookie = %d\n",
   data->host_cookie);
  data->host_cookie = 0;
 }

 sd_pre_dma_transfer(host, data, 1);
 dev_dbg(sdmmc_dev(host), "pre dma sg: %d\n", host->cookie_sg_count);
}
