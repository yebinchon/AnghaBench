
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_host {int quirks; scalar_t__ data_early; scalar_t__ data; struct mmc_command* data_cmd; int mmc; struct mmc_command* cmd; } ;
struct mmc_command {int flags; TYPE_1__* mrq; scalar_t__ data; int * resp; } ;
struct TYPE_3__ {struct mmc_command* cmd; struct mmc_command* sbc; scalar_t__ cap_cmd_during_tfr; } ;


 int DBG (char*) ;
 int MMC_RSP_136 ;
 int MMC_RSP_BUSY ;
 int MMC_RSP_PRESENT ;
 int SDHCI_QUIRK_NO_BUSY_IRQ ;
 int SDHCI_RESPONSE ;
 int __sdhci_finish_mrq (struct sdhci_host*,TYPE_1__*) ;
 int mmc_command_done (int ,TYPE_1__*) ;
 int sdhci_finish_data (struct sdhci_host*) ;
 int sdhci_read_rsp_136 (struct sdhci_host*,struct mmc_command*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_send_command (struct sdhci_host*,struct mmc_command*) ;

__attribute__((used)) static void sdhci_finish_command(struct sdhci_host *host)
{
 struct mmc_command *cmd = host->cmd;

 host->cmd = ((void*)0);

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {
   sdhci_read_rsp_136(host, cmd);
  } else {
   cmd->resp[0] = sdhci_readl(host, SDHCI_RESPONSE);
  }
 }

 if (cmd->mrq->cap_cmd_during_tfr && cmd == cmd->mrq->cmd)
  mmc_command_done(host->mmc, cmd->mrq);
 if (cmd->flags & MMC_RSP_BUSY) {
  if (cmd->data) {
   DBG("Cannot wait for busy signal when also doing a data transfer");
  } else if (!(host->quirks & SDHCI_QUIRK_NO_BUSY_IRQ) &&
      cmd == host->data_cmd) {

   return;
  }
 }


 if (cmd == cmd->mrq->sbc) {
  sdhci_send_command(host, cmd->mrq->cmd);
 } else {


  if (host->data && host->data_early)
   sdhci_finish_data(host);

  if (!cmd->data)
   __sdhci_finish_mrq(host, cmd->mrq);
 }
}
