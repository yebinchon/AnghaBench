
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u16 ;
struct skb_hold_q {int * skb; scalar_t__ is_amsdu; } ;
struct sk_buff {int dummy; } ;
struct rxtid_stats {int num_delivered; int num_hole; } ;
struct rxtid {size_t seq_next; int q; int lock; int hold_q_sz; struct skb_hold_q* hold_q; } ;
struct aggr_info_conn {int dev; int aggr_info; struct rxtid_stats* stat; struct rxtid* rx_tid; } ;


 size_t AGGR_WIN_IDX (size_t,int ) ;
 size_t ATH6KL_NEXT_SEQ_NO (size_t) ;
 int aggr_slice_amsdu (int ,struct rxtid*,int *) ;
 int ath6kl_deliver_frames_to_nw_stack (int ,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void aggr_deque_frms(struct aggr_info_conn *agg_conn, u8 tid,
       u16 seq_no, u8 order)
{
 struct sk_buff *skb;
 struct rxtid *rxtid;
 struct skb_hold_q *node;
 u16 idx, idx_end, seq_end;
 struct rxtid_stats *stats;

 rxtid = &agg_conn->rx_tid[tid];
 stats = &agg_conn->stat[tid];

 spin_lock_bh(&rxtid->lock);
 idx = AGGR_WIN_IDX(rxtid->seq_next, rxtid->hold_q_sz);
 seq_end = seq_no ? seq_no : rxtid->seq_next;
 idx_end = AGGR_WIN_IDX(seq_end, rxtid->hold_q_sz);

 do {
  node = &rxtid->hold_q[idx];
  if ((order == 1) && (!node->skb))
   break;

  if (node->skb) {
   if (node->is_amsdu)
    aggr_slice_amsdu(agg_conn->aggr_info, rxtid,
       node->skb);
   else
    skb_queue_tail(&rxtid->q, node->skb);
   node->skb = ((void*)0);
  } else {
   stats->num_hole++;
  }

  rxtid->seq_next = ATH6KL_NEXT_SEQ_NO(rxtid->seq_next);
  idx = AGGR_WIN_IDX(rxtid->seq_next, rxtid->hold_q_sz);
 } while (idx != idx_end);

 spin_unlock_bh(&rxtid->lock);

 stats->num_delivered += skb_queue_len(&rxtid->q);

 while ((skb = skb_dequeue(&rxtid->q)))
  ath6kl_deliver_frames_to_nw_stack(agg_conn->dev, skb);
}
