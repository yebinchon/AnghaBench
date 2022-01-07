
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct mmc_request {TYPE_3__* cmd; TYPE_3__* sbc; TYPE_4__* data; TYPE_2__* stop; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;
struct bcm2835_host {int use_sbc; int mutex; int use_busy; scalar_t__ dma_desc; scalar_t__ data; struct mmc_request* mrq; scalar_t__ use_dma; scalar_t__ ioaddr; TYPE_1__* pdev; } ;
struct TYPE_8__ {scalar_t__ blocks; int flags; int blksz; scalar_t__ error; } ;
struct TYPE_7__ {scalar_t__ error; } ;
struct TYPE_6__ {scalar_t__ error; } ;
struct TYPE_5__ {struct device dev; } ;


 scalar_t__ EILSEQ ;
 scalar_t__ EINVAL ;
 int MMC_DATA_READ ;
 scalar_t__ PIO_THRESHOLD ;
 scalar_t__ SDCMD ;
 int SDCMD_CMD_MASK ;
 scalar_t__ SDEDM ;
 int SDEDM_FSM_DATAMODE ;
 int SDEDM_FSM_IDENTMODE ;
 int SDEDM_FSM_MASK ;
 int WARN_ON (struct mmc_request*) ;
 int bcm2835_dumpregs (struct bcm2835_host*) ;
 int bcm2835_finish_command (struct bcm2835_host*) ;
 int bcm2835_finish_request (struct bcm2835_host*) ;
 int bcm2835_prepare_dma (struct bcm2835_host*,TYPE_4__*) ;
 scalar_t__ bcm2835_send_command (struct bcm2835_host*,TYPE_3__*) ;
 int bcm2835_start_dma (struct bcm2835_host*) ;
 int dev_err (struct device*,char*,int,...) ;
 int is_power_of_2 (int ) ;
 struct bcm2835_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void bcm2835_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct bcm2835_host *host = mmc_priv(mmc);
 struct device *dev = &host->pdev->dev;
 u32 edm, fsm;


 if (mrq->sbc)
  mrq->sbc->error = 0;
 if (mrq->cmd)
  mrq->cmd->error = 0;
 if (mrq->data)
  mrq->data->error = 0;
 if (mrq->stop)
  mrq->stop->error = 0;

 if (mrq->data && !is_power_of_2(mrq->data->blksz)) {
  dev_err(dev, "unsupported block size (%d bytes)\n",
   mrq->data->blksz);

  if (mrq->cmd)
   mrq->cmd->error = -EINVAL;

  mmc_request_done(mmc, mrq);
  return;
 }

 mutex_lock(&host->mutex);

 WARN_ON(host->mrq);
 host->mrq = mrq;

 edm = readl(host->ioaddr + SDEDM);
 fsm = edm & SDEDM_FSM_MASK;

 if ((fsm != SDEDM_FSM_IDENTMODE) &&
     (fsm != SDEDM_FSM_DATAMODE)) {
  dev_err(dev, "previous command (%d) not complete (EDM %08x)\n",
   readl(host->ioaddr + SDCMD) & SDCMD_CMD_MASK,
   edm);
  bcm2835_dumpregs(host);

  if (mrq->cmd)
   mrq->cmd->error = -EILSEQ;

  bcm2835_finish_request(host);
  mutex_unlock(&host->mutex);
  return;
 }

 if (host->use_dma && mrq->data && (mrq->data->blocks > PIO_THRESHOLD))
  bcm2835_prepare_dma(host, mrq->data);

 host->use_sbc = !!mrq->sbc && host->mrq->data &&
   (host->mrq->data->flags & MMC_DATA_READ);
 if (host->use_sbc) {
  if (bcm2835_send_command(host, mrq->sbc)) {
   if (!host->use_busy)
    bcm2835_finish_command(host);
  }
 } else if (mrq->cmd && bcm2835_send_command(host, mrq->cmd)) {
  if (host->data && host->dma_desc) {

   bcm2835_start_dma(host);
  }

  if (!host->use_busy)
   bcm2835_finish_command(host);
 }

 mutex_unlock(&host->mutex);
}
