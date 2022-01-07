
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct mmc_request {int (* done ) (struct mmc_request*) ;TYPE_2__* cmd; struct mmc_data* data; TYPE_1__* stop; } ;
struct mmc_host {TYPE_3__* card; } ;
struct mmc_data {int blocks; int blksz; scalar_t__ timeout_ns; int sg_len; int sg; } ;
struct cvm_mmc_slot {struct cvm_mmc_host* host; } ;
struct cvm_mmc_host {int dma_active; int (* release_bus ) (struct cvm_mmc_host*) ;scalar_t__ base; int (* dmar_fixup ) (struct cvm_mmc_host*,TYPE_2__*,struct mmc_data*,int) ;int (* int_enable ) (struct cvm_mmc_host*,int) ;int * dev; struct mmc_request* current_req; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int error; } ;
struct TYPE_4__ {scalar_t__ opcode; } ;


 int EINVAL ;
 scalar_t__ MIO_EMM_DMA (struct cvm_mmc_host*) ;
 int MIO_EMM_INT_CMD_ERR ;
 int MIO_EMM_INT_DMA_DONE ;
 int MIO_EMM_INT_DMA_ERR ;
 scalar_t__ MIO_EMM_STS_MASK (struct cvm_mmc_host*) ;
 scalar_t__ MMC_STOP_TRANSMISSION ;
 int WARN_ON (struct mmc_request*) ;
 int cvm_mmc_switch_to (struct cvm_mmc_slot*) ;
 int dev_err (int *,char*) ;
 scalar_t__ mmc_card_sd (TYPE_3__*) ;
 struct cvm_mmc_slot* mmc_priv (struct mmc_host*) ;
 int pr_debug (char*,int,int,int) ;
 int prepare_dma (struct cvm_mmc_host*,struct mmc_data*) ;
 int prepare_ext_dma (struct mmc_host*,struct mmc_request*) ;
 int set_wdog (struct cvm_mmc_slot*,scalar_t__) ;
 int stub1 (struct cvm_mmc_host*,int) ;
 int stub2 (struct cvm_mmc_host*,TYPE_2__*,struct mmc_data*,int) ;
 int stub3 (struct mmc_request*) ;
 int stub4 (struct cvm_mmc_host*) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void cvm_mmc_dma_request(struct mmc_host *mmc,
    struct mmc_request *mrq)
{
 struct cvm_mmc_slot *slot = mmc_priv(mmc);
 struct cvm_mmc_host *host = slot->host;
 struct mmc_data *data;
 u64 emm_dma, addr;

 if (!mrq->data || !mrq->data->sg || !mrq->data->sg_len ||
     !mrq->stop || mrq->stop->opcode != MMC_STOP_TRANSMISSION) {
  dev_err(&mmc->card->dev,
   "Error: cmv_mmc_dma_request no data\n");
  goto error;
 }

 cvm_mmc_switch_to(slot);

 data = mrq->data;
 pr_debug("DMA request  blocks: %d  block_size: %d  total_size: %d\n",
   data->blocks, data->blksz, data->blocks * data->blksz);
 if (data->timeout_ns)
  set_wdog(slot, data->timeout_ns);

 WARN_ON(host->current_req);
 host->current_req = mrq;

 emm_dma = prepare_ext_dma(mmc, mrq);
 addr = prepare_dma(host, data);
 if (!addr) {
  dev_err(host->dev, "prepare_dma failed\n");
  goto error;
 }

 host->dma_active = 1;
 host->int_enable(host, MIO_EMM_INT_CMD_ERR | MIO_EMM_INT_DMA_DONE |
    MIO_EMM_INT_DMA_ERR);

 if (host->dmar_fixup)
  host->dmar_fixup(host, mrq->cmd, data, addr);






 if (mmc_card_sd(mmc->card))
  writeq(0x00b00000ull, host->base + MIO_EMM_STS_MASK(host));
 else
  writeq(0xe4390080ull, host->base + MIO_EMM_STS_MASK(host));
 writeq(emm_dma, host->base + MIO_EMM_DMA(host));
 return;

error:
 mrq->cmd->error = -EINVAL;
 if (mrq->done)
  mrq->done(mrq);
 host->release_bus(host);
}
