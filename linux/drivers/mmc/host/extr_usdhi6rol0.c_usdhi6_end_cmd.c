
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usdhi6_host {int wait; scalar_t__ dma_active; scalar_t__ io_error; struct mmc_request* mrq; } ;
struct mmc_request {TYPE_1__* data; int stop; struct mmc_command* cmd; } ;
struct mmc_command {scalar_t__ opcode; int error; } ;
struct TYPE_2__ {int flags; int blocks; } ;


 int MMC_DATA_READ ;
 scalar_t__ MMC_READ_MULTIPLE_BLOCK ;
 scalar_t__ MMC_WRITE_MULTIPLE_BLOCK ;
 scalar_t__ SD_IO_RW_EXTENDED ;
 int USDHI6_WAIT_FOR_DMA ;
 int USDHI6_WAIT_FOR_MREAD ;
 int USDHI6_WAIT_FOR_MWRITE ;
 int USDHI6_WAIT_FOR_READ ;
 int USDHI6_WAIT_FOR_WRITE ;
 int usdhi6_dma_kick (struct usdhi6_host*) ;
 int usdhi6_error_code (struct usdhi6_host*) ;
 int usdhi6_resp_read (struct usdhi6_host*) ;
 scalar_t__ usdhi6_stop_cmd (struct usdhi6_host*) ;

__attribute__((used)) static bool usdhi6_end_cmd(struct usdhi6_host *host)
{
 struct mmc_request *mrq = host->mrq;
 struct mmc_command *cmd = mrq->cmd;

 if (host->io_error) {
  cmd->error = usdhi6_error_code(host);
  return 0;
 }

 usdhi6_resp_read(host);

 if (!mrq->data)
  return 0;

 if (host->dma_active) {
  usdhi6_dma_kick(host);
  if (!mrq->stop)
   host->wait = USDHI6_WAIT_FOR_DMA;
  else if (usdhi6_stop_cmd(host) < 0)
   return 0;
 } else if (mrq->data->flags & MMC_DATA_READ) {
  if (cmd->opcode == MMC_READ_MULTIPLE_BLOCK ||
      (cmd->opcode == SD_IO_RW_EXTENDED &&
       mrq->data->blocks > 1))
   host->wait = USDHI6_WAIT_FOR_MREAD;
  else
   host->wait = USDHI6_WAIT_FOR_READ;
 } else {
  if (cmd->opcode == MMC_WRITE_MULTIPLE_BLOCK ||
      (cmd->opcode == SD_IO_RW_EXTENDED &&
       mrq->data->blocks > 1))
   host->wait = USDHI6_WAIT_FOR_MWRITE;
  else
   host->wait = USDHI6_WAIT_FOR_WRITE;
 }

 return 1;
}
