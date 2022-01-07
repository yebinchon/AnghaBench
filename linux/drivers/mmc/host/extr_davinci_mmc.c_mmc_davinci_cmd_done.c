
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_davinci_host {int active_request; scalar_t__ base; int mmc; int * data; int * cmd; } ;
struct mmc_command {int flags; TYPE_2__* mrq; int error; void** resp; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {scalar_t__ retries; } ;


 scalar_t__ DAVINCI_MMCIM ;
 scalar_t__ DAVINCI_MMCRSP01 ;
 scalar_t__ DAVINCI_MMCRSP23 ;
 scalar_t__ DAVINCI_MMCRSP45 ;
 scalar_t__ DAVINCI_MMCRSP67 ;
 int ETIMEDOUT ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 int mmc_request_done (int ,TYPE_2__*) ;
 void* readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mmc_davinci_cmd_done(struct mmc_davinci_host *host,
     struct mmc_command *cmd)
{
 host->cmd = ((void*)0);

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {

   cmd->resp[3] = readl(host->base + DAVINCI_MMCRSP01);
   cmd->resp[2] = readl(host->base + DAVINCI_MMCRSP23);
   cmd->resp[1] = readl(host->base + DAVINCI_MMCRSP45);
   cmd->resp[0] = readl(host->base + DAVINCI_MMCRSP67);
  } else {

   cmd->resp[0] = readl(host->base + DAVINCI_MMCRSP67);
  }
 }

 if (host->data == ((void*)0) || cmd->error) {
  if (cmd->error == -ETIMEDOUT)
   cmd->mrq->cmd->retries = 0;
  mmc_request_done(host->mmc, cmd->mrq);
  writel(0, host->base + DAVINCI_MMCIM);
  host->active_request = 0;
 }
}
