
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_target {int tx_lock; struct htc_endpoint* endpoint; } ;
struct TYPE_2__ {scalar_t__ credits; } ;
struct htc_endpoint {int txq; TYPE_1__ cred_dist; } ;
struct htc_credit_report {size_t eid; scalar_t__ credits; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ATH6KL_DBG_HTC ;
 size_t ENDPOINT_MAX ;
 int WARN_ON_ONCE (int) ;
 int ath6kl_dbg (int ,char*,int) ;
 scalar_t__ get_queue_depth (int *) ;
 int htc_try_send (struct htc_target*,struct htc_endpoint*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void htc_process_credit_report(struct htc_target *target,
          struct htc_credit_report *rpt,
          int num_entries,
          enum htc_endpoint_id from_ep)
{
 int total_credits = 0, i;
 struct htc_endpoint *ep;


 spin_lock_bh(&target->tx_lock);

 for (i = 0; i < num_entries; i++, rpt++) {
  if (rpt->eid >= ENDPOINT_MAX) {
   WARN_ON_ONCE(1);
   spin_unlock_bh(&target->tx_lock);
   return;
  }

  ep = &target->endpoint[rpt->eid];
  ep->cred_dist.credits += rpt->credits;

  if (ep->cred_dist.credits && get_queue_depth(&ep->txq)) {
   spin_unlock_bh(&target->tx_lock);
   htc_try_send(target, ep, ((void*)0));
   spin_lock_bh(&target->tx_lock);
  }

  total_credits += rpt->credits;
 }
 ath6kl_dbg(ATH6KL_DBG_HTC,
     "Report indicated %d credits to distribute\n",
     total_credits);

 spin_unlock_bh(&target->tx_lock);
}
