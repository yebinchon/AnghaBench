
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_target {int tx_lock; int cred_dist_list; int credit_info; struct htc_endpoint* endpoint; } ;
struct TYPE_2__ {int dist_flags; int txq_depth; } ;
struct htc_endpoint {scalar_t__ svc_id; int txq; TYPE_1__ cred_dist; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ATH6KL_DBG_HTC ;
 int HTC_CREDIT_DIST_ACTIVITY_CHANGE ;
 int HTC_EP_ACTIVE ;
 int WARN_ON (int) ;
 int ath6kl_credit_distribute (int ,int *,int ) ;
 int ath6kl_dbg (int ,char*,int ,int *) ;
 int get_queue_depth (int *) ;
 int htc_chk_ep_txq (struct htc_target*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath6kl_htc_mbox_activity_changed(struct htc_target *target,
          enum htc_endpoint_id eid,
          bool active)
{
 struct htc_endpoint *endpoint = &target->endpoint[eid];
 bool dist = 0;

 if (endpoint->svc_id == 0) {
  WARN_ON(1);
  return;
 }

 spin_lock_bh(&target->tx_lock);

 if (active) {
  if (!(endpoint->cred_dist.dist_flags & HTC_EP_ACTIVE)) {
   endpoint->cred_dist.dist_flags |= HTC_EP_ACTIVE;
   dist = 1;
  }
 } else {
  if (endpoint->cred_dist.dist_flags & HTC_EP_ACTIVE) {
   endpoint->cred_dist.dist_flags &= ~HTC_EP_ACTIVE;
   dist = 1;
  }
 }

 if (dist) {
  endpoint->cred_dist.txq_depth =
   get_queue_depth(&endpoint->txq);

  ath6kl_dbg(ATH6KL_DBG_HTC,
      "htc tx activity ctxt 0x%p dist 0x%p\n",
      target->credit_info, &target->cred_dist_list);

  ath6kl_credit_distribute(target->credit_info,
      &target->cred_dist_list,
      HTC_CREDIT_DIST_ACTIVITY_CHANGE);
 }

 spin_unlock_bh(&target->tx_lock);

 if (dist && !active)
  htc_chk_ep_txq(target);
}
