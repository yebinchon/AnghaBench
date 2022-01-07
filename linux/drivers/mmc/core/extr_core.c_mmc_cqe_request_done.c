
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_request {int (* done ) (struct mmc_request*) ;TYPE_2__* data; int tag; TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {int error; int bytes_xfered; } ;
struct TYPE_3__ {int error; int opcode; } ;


 int EILSEQ ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_retune_needed (struct mmc_host*) ;
 int mmc_should_fail_request (struct mmc_host*,struct mmc_request*) ;
 int pr_debug (char*,int ,int ,...) ;
 int stub1 (struct mmc_request*) ;
 int trace_mmc_request_done (struct mmc_host*,struct mmc_request*) ;

void mmc_cqe_request_done(struct mmc_host *host, struct mmc_request *mrq)
{
 mmc_should_fail_request(host, mrq);


 if ((mrq->cmd && mrq->cmd->error == -EILSEQ) ||
     (mrq->data && mrq->data->error == -EILSEQ))
  mmc_retune_needed(host);

 trace_mmc_request_done(host, mrq);

 if (mrq->cmd) {
  pr_debug("%s: CQE req done (direct CMD%u): %d\n",
    mmc_hostname(host), mrq->cmd->opcode, mrq->cmd->error);
 } else {
  pr_debug("%s: CQE transfer done tag %d\n",
    mmc_hostname(host), mrq->tag);
 }

 if (mrq->data) {
  pr_debug("%s:     %d bytes transferred: %d\n",
    mmc_hostname(host),
    mrq->data->bytes_xfered, mrq->data->error);
 }

 mrq->done(mrq);
}
