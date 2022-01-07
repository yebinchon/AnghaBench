
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {int bytes_xfered; int blksz; int blocks; scalar_t__ stop; scalar_t__ error; } ;
struct alcor_sdmmc_host {TYPE_1__* mrq; scalar_t__ dma_on; struct mmc_data* data; } ;
struct TYPE_2__ {int sbc; } ;


 int AU6601_RESET_CMD ;
 int AU6601_RESET_DATA ;
 int alcor_request_complete (struct alcor_sdmmc_host*,int) ;
 int alcor_reset (struct alcor_sdmmc_host*,int) ;
 int alcor_send_cmd (struct alcor_sdmmc_host*,scalar_t__,int) ;
 int alcor_unmask_sd_irqs (struct alcor_sdmmc_host*) ;

__attribute__((used)) static void alcor_finish_data(struct alcor_sdmmc_host *host)
{
 struct mmc_data *data;

 data = host->data;
 host->data = ((void*)0);
 host->dma_on = 0;
 if (data->error)
  data->bytes_xfered = 0;
 else
  data->bytes_xfered = data->blksz * data->blocks;






 if (data->stop &&
     (data->error ||
      !host->mrq->sbc)) {





  if (data->error)
   alcor_reset(host, AU6601_RESET_CMD | AU6601_RESET_DATA);

  alcor_unmask_sd_irqs(host);
  alcor_send_cmd(host, data->stop, 0);
  return;
 }

 alcor_request_complete(host, 1);
}
