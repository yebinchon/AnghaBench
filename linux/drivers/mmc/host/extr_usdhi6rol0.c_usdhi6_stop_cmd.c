
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usdhi6_host {int mmc; int wait; struct mmc_request* mrq; } ;
struct mmc_request {TYPE_2__* stop; TYPE_1__* cmd; } ;
struct TYPE_4__ {int error; int opcode; } ;
struct TYPE_3__ {int opcode; } ;


 int EOPNOTSUPP ;

 int MMC_STOP_TRANSMISSION ;

 int USDHI6_WAIT_FOR_STOP ;
 int dev_err (int ,char*,int ,int) ;
 int mmc_dev (int ) ;

__attribute__((used)) static int usdhi6_stop_cmd(struct usdhi6_host *host)
{
 struct mmc_request *mrq = host->mrq;

 switch (mrq->cmd->opcode) {
 case 129:
 case 128:
  if (mrq->stop->opcode == MMC_STOP_TRANSMISSION) {
   host->wait = USDHI6_WAIT_FOR_STOP;
   return 0;
  }

 default:
  dev_err(mmc_dev(host->mmc),
   "unsupported stop CMD%d for CMD%d\n",
   mrq->stop->opcode, mrq->cmd->opcode);
  mrq->stop->error = -EOPNOTSUPP;
 }

 return -EOPNOTSUPP;
}
