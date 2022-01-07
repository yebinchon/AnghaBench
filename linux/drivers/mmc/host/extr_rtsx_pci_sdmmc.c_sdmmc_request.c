
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_sdmmc {int work; int using_cookie; int host_mutex; struct mmc_request* mrq; } ;
struct mmc_request {int cmd; struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int dummy; } ;


 struct realtek_pci_sdmmc* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 int sd_pre_dma_transfer (struct realtek_pci_sdmmc*,struct mmc_data*,int) ;
 scalar_t__ sd_rw_cmd (int ) ;
 scalar_t__ sdio_extblock_cmd (int ,struct mmc_data*) ;

__attribute__((used)) static void sdmmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct realtek_pci_sdmmc *host = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 mutex_lock(&host->host_mutex);
 host->mrq = mrq;
 mutex_unlock(&host->host_mutex);

 if (sd_rw_cmd(mrq->cmd) || sdio_extblock_cmd(mrq->cmd, data))
  host->using_cookie = sd_pre_dma_transfer(host, data, 0);

 schedule_work(&host->work);
}
