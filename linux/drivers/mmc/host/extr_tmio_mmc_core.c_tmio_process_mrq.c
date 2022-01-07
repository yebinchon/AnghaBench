
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int mmc; int * mrq; int delayed_reset_work; struct mmc_command* cmd; } ;
struct mmc_request {struct mmc_command* cmd; scalar_t__ data; struct mmc_command* sbc; } ;
struct mmc_command {int error; } ;


 int CMDREQ_TIMEOUT ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int tmio_mmc_start_command (struct tmio_mmc_host*,struct mmc_command*) ;
 int tmio_mmc_start_data (struct tmio_mmc_host*,scalar_t__) ;

__attribute__((used)) static void tmio_process_mrq(struct tmio_mmc_host *host,
        struct mmc_request *mrq)
{
 struct mmc_command *cmd;
 int ret;

 if (mrq->sbc && host->cmd != mrq->sbc) {
  cmd = mrq->sbc;
 } else {
  cmd = mrq->cmd;
  if (mrq->data) {
   ret = tmio_mmc_start_data(host, mrq->data);
   if (ret)
    goto fail;
  }
 }

 ret = tmio_mmc_start_command(host, cmd);
 if (ret)
  goto fail;

 schedule_delayed_work(&host->delayed_reset_work,
         msecs_to_jiffies(CMDREQ_TIMEOUT));
 return;

fail:
 host->mrq = ((void*)0);
 mrq->cmd->error = ret;
 mmc_request_done(host->mmc, mrq);
}
