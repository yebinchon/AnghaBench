
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int completion; TYPE_1__* cmd; int done; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int complete (int *) ;
 int init_completion (int *) ;
 int mmc_complete_cmd (struct mmc_request*) ;
 int mmc_start_request (struct mmc_host*,struct mmc_request*) ;
 int mmc_wait_done ;
 int mmc_wait_ongoing_tfr_cmd (struct mmc_host*) ;

__attribute__((used)) static int __mmc_start_req(struct mmc_host *host, struct mmc_request *mrq)
{
 int err;

 mmc_wait_ongoing_tfr_cmd(host);

 init_completion(&mrq->completion);
 mrq->done = mmc_wait_done;

 err = mmc_start_request(host, mrq);
 if (err) {
  mrq->cmd->error = err;
  mmc_complete_cmd(mrq);
  complete(&mrq->completion);
 }

 return err;
}
