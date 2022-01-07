
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int cmd_completion; } ;
struct mmc_host {int led; int claimed; int card; } ;


 int ENOMEDIUM ;
 int LED_FULL ;
 int WARN_ON (int) ;
 int __mmc_start_request (struct mmc_host*,struct mmc_request*) ;
 int init_completion (int *) ;
 int led_trigger_event (int ,int ) ;
 scalar_t__ mmc_card_removed (int ) ;
 int mmc_mrq_pr_debug (struct mmc_host*,struct mmc_request*,int) ;
 int mmc_mrq_prep (struct mmc_host*,struct mmc_request*) ;
 int mmc_retune_hold (struct mmc_host*) ;

int mmc_start_request(struct mmc_host *host, struct mmc_request *mrq)
{
 int err;

 init_completion(&mrq->cmd_completion);

 mmc_retune_hold(host);

 if (mmc_card_removed(host->card))
  return -ENOMEDIUM;

 mmc_mrq_pr_debug(host, mrq, 0);

 WARN_ON(!host->claimed);

 err = mmc_mrq_prep(host, mrq);
 if (err)
  return err;

 led_trigger_event(host->led, LED_FULL);
 __mmc_start_request(host, mrq);

 return 0;
}
