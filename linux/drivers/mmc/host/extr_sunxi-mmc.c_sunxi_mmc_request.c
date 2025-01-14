
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_mmc_host {int wait_dma; int ferror; int sdio_imask; int lock; struct mmc_request* mrq; scalar_t__ manual_stop_mrq; } ;
struct mmc_request {struct mmc_command* cmd; struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int error; int blksz; int blocks; int sg_len; int sg; } ;
struct mmc_command {int opcode; int error; int flags; int arg; TYPE_1__* data; } ;
struct TYPE_2__ {int flags; scalar_t__ stop; } ;


 int EBUSY ;
 int MMC_CMD_ADTC ;
 int MMC_CMD_MASK ;
 int MMC_DATA_WRITE ;
 int MMC_GO_IDLE_STATE ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;
 int REG_BCNTR ;
 int REG_BLKSZ ;
 int REG_CARG ;
 int REG_CMDR ;
 int REG_IMASK ;
 int SDXC_AUTO_COMMAND_DONE ;
 int SDXC_CHECK_RESPONSE_CRC ;
 int SDXC_COMMAND_DONE ;
 int SDXC_DATA_EXPIRE ;
 int SDXC_DATA_OVER ;
 int SDXC_INTERRUPT_ERROR_BIT ;
 int SDXC_LONG_RESPONSE ;
 int SDXC_RESP_EXPIRE ;
 int SDXC_SEND_AUTO_STOP ;
 int SDXC_SEND_INIT_SEQUENCE ;
 int SDXC_START ;
 int SDXC_WAIT_PRE_OVER ;
 int SDXC_WRITE ;
 int dev_dbg (int ,char*,int,int,int,int,int) ;
 int dev_err (int ,char*) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 struct sunxi_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunxi_mmc_map_dma (struct sunxi_mmc_host*,struct mmc_data*) ;
 int sunxi_mmc_start_dma (struct sunxi_mmc_host*,struct mmc_data*) ;

__attribute__((used)) static void sunxi_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct sunxi_mmc_host *host = mmc_priv(mmc);
 struct mmc_command *cmd = mrq->cmd;
 struct mmc_data *data = mrq->data;
 unsigned long iflags;
 u32 imask = SDXC_INTERRUPT_ERROR_BIT;
 u32 cmd_val = SDXC_START | (cmd->opcode & 0x3f);
 bool wait_dma = host->wait_dma;
 int ret;


 if (host->ferror) {
  mrq->cmd->error = host->ferror;
  mmc_request_done(mmc, mrq);
  return;
 }

 if (data) {
  ret = sunxi_mmc_map_dma(host, data);
  if (ret < 0) {
   dev_err(mmc_dev(mmc), "map DMA failed\n");
   cmd->error = ret;
   data->error = ret;
   mmc_request_done(mmc, mrq);
   return;
  }
 }

 if (cmd->opcode == MMC_GO_IDLE_STATE) {
  cmd_val |= SDXC_SEND_INIT_SEQUENCE;
  imask |= SDXC_COMMAND_DONE;
 }

 if (cmd->flags & MMC_RSP_PRESENT) {
  cmd_val |= SDXC_RESP_EXPIRE;
  if (cmd->flags & MMC_RSP_136)
   cmd_val |= SDXC_LONG_RESPONSE;
  if (cmd->flags & MMC_RSP_CRC)
   cmd_val |= SDXC_CHECK_RESPONSE_CRC;

  if ((cmd->flags & MMC_CMD_MASK) == MMC_CMD_ADTC) {
   cmd_val |= SDXC_DATA_EXPIRE | SDXC_WAIT_PRE_OVER;

   if (cmd->data->stop) {
    imask |= SDXC_AUTO_COMMAND_DONE;
    cmd_val |= SDXC_SEND_AUTO_STOP;
   } else {
    imask |= SDXC_DATA_OVER;
   }

   if (cmd->data->flags & MMC_DATA_WRITE)
    cmd_val |= SDXC_WRITE;
   else
    wait_dma = 1;
  } else {
   imask |= SDXC_COMMAND_DONE;
  }
 } else {
  imask |= SDXC_COMMAND_DONE;
 }

 dev_dbg(mmc_dev(mmc), "cmd %d(%08x) arg %x ie 0x%08x len %d\n",
  cmd_val & 0x3f, cmd_val, cmd->arg, imask,
  mrq->data ? mrq->data->blksz * mrq->data->blocks : 0);

 spin_lock_irqsave(&host->lock, iflags);

 if (host->mrq || host->manual_stop_mrq) {
  spin_unlock_irqrestore(&host->lock, iflags);

  if (data)
   dma_unmap_sg(mmc_dev(mmc), data->sg, data->sg_len,
         mmc_get_dma_dir(data));

  dev_err(mmc_dev(mmc), "request already pending\n");
  mrq->cmd->error = -EBUSY;
  mmc_request_done(mmc, mrq);
  return;
 }

 if (data) {
  mmc_writel(host, REG_BLKSZ, data->blksz);
  mmc_writel(host, REG_BCNTR, data->blksz * data->blocks);
  sunxi_mmc_start_dma(host, data);
 }

 host->mrq = mrq;
 host->wait_dma = wait_dma;
 mmc_writel(host, REG_IMASK, host->sdio_imask | imask);
 mmc_writel(host, REG_CARG, cmd->arg);
 mmc_writel(host, REG_CMDR, cmd_val);

 spin_unlock_irqrestore(&host->lock, iflags);
}
