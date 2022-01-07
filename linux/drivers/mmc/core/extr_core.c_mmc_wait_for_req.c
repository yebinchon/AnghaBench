
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int cap_cmd_during_tfr; } ;
struct mmc_host {int dummy; } ;


 int __mmc_start_req (struct mmc_host*,struct mmc_request*) ;
 int mmc_wait_for_req_done (struct mmc_host*,struct mmc_request*) ;

void mmc_wait_for_req(struct mmc_host *host, struct mmc_request *mrq)
{
 __mmc_start_req(host, mrq);

 if (!mrq->cap_cmd_during_tfr)
  mmc_wait_for_req_done(host, mrq);
}
