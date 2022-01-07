
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {int dummy; } ;
struct mmc_request {int cmd; struct mmc_command* sbc; } ;
struct mmc_command {scalar_t__ opcode; int data; scalar_t__ error; } ;


 scalar_t__ EILSEQ ;
 scalar_t__ MMC_SEND_TUNING_BLOCK ;
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ;
 int msdc_request_done (struct msdc_host*,struct mmc_request*) ;
 int msdc_start_command (struct msdc_host*,struct mmc_request*,int ) ;
 int msdc_start_data (struct msdc_host*,struct mmc_request*,struct mmc_command*,int ) ;

__attribute__((used)) static void msdc_cmd_next(struct msdc_host *host,
  struct mmc_request *mrq, struct mmc_command *cmd)
{
 if ((cmd->error &&
     !(cmd->error == -EILSEQ &&
       (cmd->opcode == MMC_SEND_TUNING_BLOCK ||
        cmd->opcode == MMC_SEND_TUNING_BLOCK_HS200))) ||
     (mrq->sbc && mrq->sbc->error))
  msdc_request_done(host, mrq);
 else if (cmd == mrq->sbc)
  msdc_start_command(host, mrq, mrq->cmd);
 else if (!cmd->data)
  msdc_request_done(host, mrq);
 else
  msdc_start_data(host, mrq, cmd, cmd->data);
}
