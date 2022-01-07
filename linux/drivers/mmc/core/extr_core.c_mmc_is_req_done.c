
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int completion; } ;
struct mmc_host {int dummy; } ;


 int completion_done (int *) ;

bool mmc_is_req_done(struct mmc_host *host, struct mmc_request *mrq)
{
 return completion_done(&mrq->completion);
}
