
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmio_mmc_host {int done; TYPE_1__* pdev; TYPE_2__* mrq; scalar_t__ dma_on; struct mmc_data* data; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int flags; int error; struct mmc_command* stop; } ;
struct mmc_command {scalar_t__ opcode; int * resp; scalar_t__ arg; } ;
struct TYPE_4__ {int sbc; } ;
struct TYPE_3__ {int dev; } ;


 int CTL_RESPONSE ;
 int CTL_STOP_INTERNAL_ACTION ;
 int MMC_DATA_READ ;
 scalar_t__ MMC_STOP_TRANSMISSION ;
 int dev_dbg (int *,char*,TYPE_2__*) ;
 int dev_err (int *,char*,scalar_t__,scalar_t__) ;
 int dev_warn (int *,char*) ;
 int pr_debug (char*) ;
 int schedule_work (int *) ;
 int sd_ctrl_read16_and_16_as_32 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int ) ;
 int tmio_mmc_check_bounce_buffer (struct tmio_mmc_host*) ;

void tmio_mmc_do_data_irq(struct tmio_mmc_host *host)
{
 struct mmc_data *data = host->data;
 struct mmc_command *stop;

 host->data = ((void*)0);

 if (!data) {
  dev_warn(&host->pdev->dev, "Spurious data end IRQ\n");
  return;
 }
 stop = data->stop;


 if (!data->error)
  data->bytes_xfered = data->blocks * data->blksz;
 else
  data->bytes_xfered = 0;

 pr_debug("Completed data request\n");
 if (data->flags & MMC_DATA_READ) {
  if (host->dma_on)
   tmio_mmc_check_bounce_buffer(host);
  dev_dbg(&host->pdev->dev, "Complete Rx request %p\n",
   host->mrq);
 } else {
  dev_dbg(&host->pdev->dev, "Complete Tx request %p\n",
   host->mrq);
 }

 if (stop && !host->mrq->sbc) {
  if (stop->opcode != MMC_STOP_TRANSMISSION || stop->arg)
   dev_err(&host->pdev->dev, "unsupported stop: CMD%u,0x%x. We did CMD12,0\n",
    stop->opcode, stop->arg);


  stop->resp[0] = sd_ctrl_read16_and_16_as_32(host, CTL_RESPONSE);

  sd_ctrl_write16(host, CTL_STOP_INTERNAL_ACTION, 0);
 }

 schedule_work(&host->done);
}
