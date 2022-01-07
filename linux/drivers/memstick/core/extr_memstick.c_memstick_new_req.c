
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memstick_host {int (* request ) (struct memstick_host*) ;TYPE_1__* card; int retries; } ;
struct TYPE_2__ {int mrq_complete; } ;


 int cmd_retries ;
 int reinit_completion (int *) ;
 int stub1 (struct memstick_host*) ;

void memstick_new_req(struct memstick_host *host)
{
 if (host->card) {
  host->retries = cmd_retries;
  reinit_completion(&host->card->mrq_complete);
  host->request(host);
 }
}
