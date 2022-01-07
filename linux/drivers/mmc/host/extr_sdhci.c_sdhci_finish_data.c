
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int flags; struct mmc_command* cmd; struct mmc_command* data_cmd; struct mmc_data* data; } ;
struct mmc_data {int bytes_xfered; int blksz; int blocks; TYPE_1__* mrq; scalar_t__ stop; scalar_t__ error; } ;
struct mmc_command {int dummy; } ;
struct TYPE_2__ {scalar_t__ cap_cmd_during_tfr; int sbc; } ;


 int SDHCI_REQ_USE_DMA ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int SDHCI_USE_ADMA ;
 int __sdhci_finish_mrq (struct sdhci_host*,TYPE_1__*) ;
 int sdhci_adma_table_post (struct sdhci_host*,struct mmc_data*) ;
 int sdhci_do_reset (struct sdhci_host*,int ) ;
 int sdhci_send_command (struct sdhci_host*,scalar_t__) ;

__attribute__((used)) static void sdhci_finish_data(struct sdhci_host *host)
{
 struct mmc_command *data_cmd = host->data_cmd;
 struct mmc_data *data = host->data;

 host->data = ((void*)0);
 host->data_cmd = ((void*)0);





 if (data->error) {
  if (!host->cmd || host->cmd == data_cmd)
   sdhci_do_reset(host, SDHCI_RESET_CMD);
  sdhci_do_reset(host, SDHCI_RESET_DATA);
 }

 if ((host->flags & (SDHCI_REQ_USE_DMA | SDHCI_USE_ADMA)) ==
     (SDHCI_REQ_USE_DMA | SDHCI_USE_ADMA))
  sdhci_adma_table_post(host, data);
 if (data->error)
  data->bytes_xfered = 0;
 else
  data->bytes_xfered = data->blksz * data->blocks;






 if (data->stop &&
     (data->error ||
      !data->mrq->sbc)) {





  if (data->mrq->cap_cmd_during_tfr) {
   __sdhci_finish_mrq(host, data->mrq);
  } else {

   host->cmd = ((void*)0);
   sdhci_send_command(host, data->stop);
  }
 } else {
  __sdhci_finish_mrq(host, data->mrq);
 }
}
