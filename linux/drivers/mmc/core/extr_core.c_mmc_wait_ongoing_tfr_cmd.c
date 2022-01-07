
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int cmd_completion; } ;
struct mmc_host {int ongoing_mrq; } ;


 struct mmc_request* READ_ONCE (int ) ;
 int completion_done (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static inline void mmc_wait_ongoing_tfr_cmd(struct mmc_host *host)
{
 struct mmc_request *ongoing_mrq = READ_ONCE(host->ongoing_mrq);





 if (ongoing_mrq && !completion_done(&ongoing_mrq->cmd_completion))
  wait_for_completion(&ongoing_mrq->cmd_completion);
}
