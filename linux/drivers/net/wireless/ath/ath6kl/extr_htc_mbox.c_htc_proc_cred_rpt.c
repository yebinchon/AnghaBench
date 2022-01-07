
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct htc_target {int tx_lock; int cred_dist_list; int credit_info; struct htc_endpoint* endpoint; } ;
struct TYPE_4__ {int txq_depth; int cred_to_dist; int credits; } ;
struct TYPE_3__ {int tx_cred_rpt; int cred_rpt_from_rx; int cred_rpt_ep0; int cred_rpt_from_other; int cred_from_other; int cred_from_ep0; int cred_from_rx; int cred_retnd; } ;
struct htc_endpoint {int txq; TYPE_2__ cred_dist; TYPE_1__ ep_st; } ;
struct htc_credit_report {size_t eid; scalar_t__ credits; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ATH6KL_DBG_CREDIT ;
 int ENDPOINT_0 ;
 size_t ENDPOINT_MAX ;
 int HTC_CREDIT_DIST_SEND_COMPLETE ;
 int WARN_ON (int) ;
 int ath6kl_credit_distribute (int ,int *,int ) ;
 int ath6kl_dbg (int ,char*,size_t,scalar_t__) ;
 int get_queue_depth (int *) ;
 int htc_chk_ep_txq (struct htc_target*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void htc_proc_cred_rpt(struct htc_target *target,
         struct htc_credit_report *rpt,
         int n_entries,
         enum htc_endpoint_id from_ep)
{
 struct htc_endpoint *endpoint;
 int tot_credits = 0, i;
 bool dist = 0;

 spin_lock_bh(&target->tx_lock);

 for (i = 0; i < n_entries; i++, rpt++) {
  if (rpt->eid >= ENDPOINT_MAX) {
   WARN_ON(1);
   spin_unlock_bh(&target->tx_lock);
   return;
  }

  endpoint = &target->endpoint[rpt->eid];

  ath6kl_dbg(ATH6KL_DBG_CREDIT,
      "credit report ep %d credits %d\n",
      rpt->eid, rpt->credits);

  endpoint->ep_st.tx_cred_rpt += 1;
  endpoint->ep_st.cred_retnd += rpt->credits;

  if (from_ep == rpt->eid) {




   endpoint->ep_st.cred_from_rx += rpt->credits;
   endpoint->ep_st.cred_rpt_from_rx += 1;
  } else if (from_ep == ENDPOINT_0) {

   endpoint->ep_st.cred_from_ep0 += rpt->credits;
   endpoint->ep_st.cred_rpt_ep0 += 1;
  } else {
   endpoint->ep_st.cred_from_other += rpt->credits;
   endpoint->ep_st.cred_rpt_from_other += 1;
  }

  if (rpt->eid == ENDPOINT_0)

   endpoint->cred_dist.credits += rpt->credits;
  else {
   endpoint->cred_dist.cred_to_dist += rpt->credits;
   dist = 1;
  }






  endpoint->cred_dist.txq_depth =
   get_queue_depth(&endpoint->txq);

  tot_credits += rpt->credits;
 }

 if (dist) {




  ath6kl_credit_distribute(target->credit_info,
      &target->cred_dist_list,
      HTC_CREDIT_DIST_SEND_COMPLETE);
 }

 spin_unlock_bh(&target->tx_lock);

 if (tot_credits)
  htc_chk_ep_txq(target);
}
