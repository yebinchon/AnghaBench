
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* cmd; int cap_cmd_during_tfr; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int opcode; } ;


 int mmc_complete_cmd (struct mmc_request*) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,int ) ;

void mmc_command_done(struct mmc_host *host, struct mmc_request *mrq)
{
 if (!mrq->cap_cmd_during_tfr)
  return;

 mmc_complete_cmd(mrq);

 pr_debug("%s: cmd done, tfr ongoing (CMD%u)\n",
   mmc_hostname(host), mrq->cmd->opcode);
}
