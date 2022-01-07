
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int stop; struct mmc_command* cmd; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int flags; } ;
struct mmc_command {int flags; scalar_t__ error; struct mmc_data* data; } ;
struct jz4740_mmc_host {int state; int use_dma; struct mmc_request* req; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;




 int JZ_MMC_IRQ_DATA_TRAN_DONE ;
 int JZ_MMC_IRQ_PRG_DONE ;
 int MMC_DATA_READ ;
 int MMC_RSP_BUSY ;
 int MMC_RSP_PRESENT ;
 int jz4740_mmc_poll_irq (struct jz4740_mmc_host*,int ) ;
 int jz4740_mmc_read_data (struct jz4740_mmc_host*,struct mmc_data*) ;
 int jz4740_mmc_read_response (struct jz4740_mmc_host*,struct mmc_command*) ;
 int jz4740_mmc_request_done (struct jz4740_mmc_host*) ;
 int jz4740_mmc_send_command (struct jz4740_mmc_host*,int ) ;
 int jz4740_mmc_start_dma_transfer (struct jz4740_mmc_host*,struct mmc_data*) ;
 int jz4740_mmc_transfer_check_state (struct jz4740_mmc_host*,struct mmc_data*) ;
 int jz4740_mmc_write_data (struct jz4740_mmc_host*,struct mmc_data*) ;
 int jz4740_mmc_write_irq_reg (struct jz4740_mmc_host*,int ) ;
 int jz_mmc_prepare_data_transfer (struct jz4740_mmc_host*) ;
 int mmc_resp_type (int ) ;
 int unlikely (int) ;

__attribute__((used)) static irqreturn_t jz_mmc_irq_worker(int irq, void *devid)
{
 struct jz4740_mmc_host *host = (struct jz4740_mmc_host *)devid;
 struct mmc_command *cmd = host->req->cmd;
 struct mmc_request *req = host->req;
 struct mmc_data *data = cmd->data;
 bool timeout = 0;

 if (cmd->error)
  host->state = 131;

 switch (host->state) {
 case 130:
  if (cmd->flags & MMC_RSP_PRESENT)
   jz4740_mmc_read_response(host, cmd);

  if (!data)
   break;

  jz_mmc_prepare_data_transfer(host);


 case 128:
  if (host->use_dma) {






   timeout = jz4740_mmc_start_dma_transfer(host, data);
   data->bytes_xfered = data->blocks * data->blksz;
  } else if (data->flags & MMC_DATA_READ)





   timeout = jz4740_mmc_read_data(host, data);
  else
   timeout = jz4740_mmc_write_data(host, data);

  if (unlikely(timeout)) {
   host->state = 128;
   break;
  }

  jz4740_mmc_transfer_check_state(host, data);

  timeout = jz4740_mmc_poll_irq(host, JZ_MMC_IRQ_DATA_TRAN_DONE);
  if (unlikely(timeout)) {
   host->state = 129;
   break;
  }
  jz4740_mmc_write_irq_reg(host, JZ_MMC_IRQ_DATA_TRAN_DONE);


 case 129:
  if (!req->stop)
   break;

  jz4740_mmc_send_command(host, req->stop);

  if (mmc_resp_type(req->stop) & MMC_RSP_BUSY) {
   timeout = jz4740_mmc_poll_irq(host,
            JZ_MMC_IRQ_PRG_DONE);
   if (timeout) {
    host->state = 131;
    break;
   }
  }
 case 131:
  break;
 }

 if (!timeout)
  jz4740_mmc_request_done(host);

 return IRQ_HANDLED;
}
