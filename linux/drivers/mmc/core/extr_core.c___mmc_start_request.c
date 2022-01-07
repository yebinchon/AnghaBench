
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_request {int cmd_completion; scalar_t__ cap_cmd_during_tfr; TYPE_1__* cmd; } ;
struct mmc_host {TYPE_3__* ops; TYPE_2__* cqe_ops; scalar_t__ cqe_on; struct mmc_request* ongoing_mrq; } ;
struct TYPE_6__ {int (* request ) (struct mmc_host*,struct mmc_request*) ;scalar_t__ (* card_busy ) (struct mmc_host*) ;} ;
struct TYPE_5__ {int (* cqe_off ) (struct mmc_host*) ;} ;
struct TYPE_4__ {int error; int arg; int opcode; } ;


 int EBUSY ;
 int mmc_delay (int) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int mmc_retune (struct mmc_host*) ;
 int reinit_completion (int *) ;
 scalar_t__ sdio_is_io_busy (int ,int ) ;
 scalar_t__ stub1 (struct mmc_host*) ;
 int stub2 (struct mmc_host*) ;
 int stub3 (struct mmc_host*,struct mmc_request*) ;
 int trace_mmc_request_start (struct mmc_host*,struct mmc_request*) ;

__attribute__((used)) static void __mmc_start_request(struct mmc_host *host, struct mmc_request *mrq)
{
 int err;


 err = mmc_retune(host);
 if (err) {
  mrq->cmd->error = err;
  mmc_request_done(host, mrq);
  return;
 }






 if (sdio_is_io_busy(mrq->cmd->opcode, mrq->cmd->arg) &&
     host->ops->card_busy) {
  int tries = 500;

  while (host->ops->card_busy(host) && --tries)
   mmc_delay(1);

  if (tries == 0) {
   mrq->cmd->error = -EBUSY;
   mmc_request_done(host, mrq);
   return;
  }
 }

 if (mrq->cap_cmd_during_tfr) {
  host->ongoing_mrq = mrq;




  reinit_completion(&mrq->cmd_completion);
 }

 trace_mmc_request_start(host, mrq);

 if (host->cqe_on)
  host->cqe_ops->cqe_off(host);

 host->ops->request(host, mrq);
}
