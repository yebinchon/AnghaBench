
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_request {int completion; int done; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct mmc_host* host; } ;


 int init_completion (int *) ;
 int mmc_post_req (struct mmc_host*,struct mmc_request*,int) ;
 int mmc_pre_req (struct mmc_host*,struct mmc_request*) ;
 int mmc_retune_release (struct mmc_host*) ;
 int mmc_start_request (struct mmc_host*,struct mmc_request*) ;
 int mmc_test_check_result (struct mmc_test_card*,struct mmc_request*) ;
 int mmc_test_wait_busy (struct mmc_test_card*) ;
 int mmc_test_wait_done ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mmc_test_start_areq(struct mmc_test_card *test,
          struct mmc_request *mrq,
          struct mmc_request *prev_mrq)
{
 struct mmc_host *host = test->card->host;
 int err = 0;

 if (mrq) {
  init_completion(&mrq->completion);
  mrq->done = mmc_test_wait_done;
  mmc_pre_req(host, mrq);
 }

 if (prev_mrq) {
  wait_for_completion(&prev_mrq->completion);
  err = mmc_test_wait_busy(test);
  if (!err)
   err = mmc_test_check_result(test, prev_mrq);
 }

 if (!err && mrq) {
  err = mmc_start_request(host, mrq);
  if (err)
   mmc_retune_release(host);
 }

 if (prev_mrq)
  mmc_post_req(host, prev_mrq, 0);

 if (err && mrq)
  mmc_post_req(host, mrq, err);

 return err;
}
