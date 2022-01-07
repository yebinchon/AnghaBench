
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_target {int tx_lock; } ;
struct htc_packet {int list; } ;
struct htc_ep_callbacks {scalar_t__ (* tx_full ) (int ,struct htc_packet*) ;} ;
struct TYPE_2__ {int tx_dropped; } ;
struct htc_endpoint {int max_txq_depth; int txq; TYPE_1__ ep_st; int target; int eid; struct htc_ep_callbacks ep_cb; } ;


 int ATH6KL_DBG_HTC ;
 scalar_t__ HTC_SEND_FULL_DROP ;
 int ath6kl_dbg (int ,char*,int ,int,int) ;
 int ath6kl_htc_tx_from_queue (struct htc_target*,struct htc_endpoint*) ;
 int get_queue_depth (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ stub1 (int ,struct htc_packet*) ;

__attribute__((used)) static bool ath6kl_htc_tx_try(struct htc_target *target,
         struct htc_endpoint *endpoint,
         struct htc_packet *tx_pkt)
{
 struct htc_ep_callbacks ep_cb;
 int txq_depth;
 bool overflow = 0;

 ep_cb = endpoint->ep_cb;

 spin_lock_bh(&target->tx_lock);
 txq_depth = get_queue_depth(&endpoint->txq);
 spin_unlock_bh(&target->tx_lock);

 if (txq_depth >= endpoint->max_txq_depth)
  overflow = 1;

 if (overflow)
  ath6kl_dbg(ATH6KL_DBG_HTC,
      "htc tx overflow ep %d depth %d max %d\n",
      endpoint->eid, txq_depth,
      endpoint->max_txq_depth);

 if (overflow && ep_cb.tx_full) {
  if (ep_cb.tx_full(endpoint->target, tx_pkt) ==
      HTC_SEND_FULL_DROP) {
   endpoint->ep_st.tx_dropped += 1;
   return 0;
  }
 }

 spin_lock_bh(&target->tx_lock);
 list_add_tail(&tx_pkt->list, &endpoint->txq);
 spin_unlock_bh(&target->tx_lock);

 ath6kl_htc_tx_from_queue(target, endpoint);

 return 1;
}
