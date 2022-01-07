
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int flags; int mrq; scalar_t__ error; void** resp; } ;
struct goldfish_mmc_host {int * mrq; int * data; int * cmd; } ;


 void* GOLDFISH_MMC_READ (struct goldfish_mmc_host*,int ) ;
 int MMC_RESP_0 ;
 int MMC_RESP_1 ;
 int MMC_RESP_2 ;
 int MMC_RESP_3 ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 int mmc_from_priv (struct goldfish_mmc_host*) ;
 int mmc_request_done (int ,int ) ;

__attribute__((used)) static void goldfish_mmc_cmd_done(struct goldfish_mmc_host *host,
      struct mmc_command *cmd)
{
 host->cmd = ((void*)0);
 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {

   cmd->resp[3] =
    GOLDFISH_MMC_READ(host, MMC_RESP_0);
   cmd->resp[2] =
    GOLDFISH_MMC_READ(host, MMC_RESP_1);
   cmd->resp[1] =
    GOLDFISH_MMC_READ(host, MMC_RESP_2);
   cmd->resp[0] =
    GOLDFISH_MMC_READ(host, MMC_RESP_3);
  } else {

   cmd->resp[0] =
    GOLDFISH_MMC_READ(host, MMC_RESP_0);
  }
 }

 if (host->data == ((void*)0) || cmd->error) {
  host->mrq = ((void*)0);
  mmc_request_done(mmc_from_priv(host), cmd->mrq);
 }
}
