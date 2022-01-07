
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct skb_hold_q {int is_amsdu; int seq_no; struct sk_buff* skb; } ;
struct sk_buff {int dummy; } ;
struct rxtid_stats {int num_mpdu; int num_amsdu; int num_dups; int num_oow; int num_into_aggr; } ;
struct rxtid {int seq_next; int hold_q_sz; int timer_mon; int lock; struct skb_hold_q* hold_q; int q; int aggr; } ;
struct aggr_info_conn {int timer_scheduled; int timer; int dev; int aggr_info; struct rxtid_stats* stat; struct rxtid* rx_tid; } ;


 int AGGR_RX_TIMEOUT ;
 int AGGR_WIN_IDX (int,int) ;
 int ATH6KL_MAX_SEQ_NO ;
 int HZ ;
 int aggr_deque_frms (struct aggr_info_conn*,size_t,int,int) ;
 int aggr_slice_amsdu (int ,struct rxtid*,struct sk_buff*) ;
 int ath6kl_deliver_frames_to_nw_stack (int ,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool aggr_process_recv_frm(struct aggr_info_conn *agg_conn, u8 tid,
      u16 seq_no,
      bool is_amsdu, struct sk_buff *frame)
{
 struct rxtid *rxtid;
 struct rxtid_stats *stats;
 struct sk_buff *skb;
 struct skb_hold_q *node;
 u16 idx, st, cur, end;
 bool is_queued = 0;
 u16 extended_end;

 rxtid = &agg_conn->rx_tid[tid];
 stats = &agg_conn->stat[tid];

 stats->num_into_aggr++;

 if (!rxtid->aggr) {
  if (is_amsdu) {
   aggr_slice_amsdu(agg_conn->aggr_info, rxtid, frame);
   is_queued = 1;
   stats->num_amsdu++;
   while ((skb = skb_dequeue(&rxtid->q)))
    ath6kl_deliver_frames_to_nw_stack(agg_conn->dev,
          skb);
  }
  return is_queued;
 }


 st = rxtid->seq_next;
 cur = seq_no;
 end = (st + rxtid->hold_q_sz-1) & ATH6KL_MAX_SEQ_NO;

 if (((st < end) && (cur < st || cur > end)) ||
     ((st > end) && (cur > end) && (cur < st))) {
  extended_end = (end + rxtid->hold_q_sz - 1) &
   ATH6KL_MAX_SEQ_NO;

  if (((end < extended_end) &&
       (cur < end || cur > extended_end)) ||
      ((end > extended_end) && (cur > extended_end) &&
       (cur < end))) {
   aggr_deque_frms(agg_conn, tid, 0, 0);
   spin_lock_bh(&rxtid->lock);
   if (cur >= rxtid->hold_q_sz - 1)
    rxtid->seq_next = cur - (rxtid->hold_q_sz - 1);
   else
    rxtid->seq_next = ATH6KL_MAX_SEQ_NO -
        (rxtid->hold_q_sz - 2 - cur);
   spin_unlock_bh(&rxtid->lock);
  } else {




   if (cur >= rxtid->hold_q_sz - 1)
    st = cur - (rxtid->hold_q_sz - 1);
   else
    st = ATH6KL_MAX_SEQ_NO -
     (rxtid->hold_q_sz - 2 - cur);

   aggr_deque_frms(agg_conn, tid, st, 0);
  }

  stats->num_oow++;
 }

 idx = AGGR_WIN_IDX(seq_no, rxtid->hold_q_sz);

 node = &rxtid->hold_q[idx];

 spin_lock_bh(&rxtid->lock);
 dev_kfree_skb(node->skb);
 stats->num_dups++;

 node->skb = frame;
 is_queued = 1;
 node->is_amsdu = is_amsdu;
 node->seq_no = seq_no;

 if (node->is_amsdu)
  stats->num_amsdu++;
 else
  stats->num_mpdu++;

 spin_unlock_bh(&rxtid->lock);

 aggr_deque_frms(agg_conn, tid, 0, 1);

 if (agg_conn->timer_scheduled)
  return is_queued;

 spin_lock_bh(&rxtid->lock);
 for (idx = 0; idx < rxtid->hold_q_sz; idx++) {
  if (rxtid->hold_q[idx].skb) {






   agg_conn->timer_scheduled = 1;
   mod_timer(&agg_conn->timer,
      (jiffies + (HZ * AGGR_RX_TIMEOUT) / 1000));
   rxtid->timer_mon = 1;
   break;
  }
 }
 spin_unlock_bh(&rxtid->lock);

 return is_queued;
}
