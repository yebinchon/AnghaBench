
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct htt_tx_done {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int lock; } ;
struct ath10k_htt {TYPE_2__ tx_fetch_ind_q; int txdone_fifo; int num_mpdus_ready; TYPE_1__ rx_ring; int rx_in_ord_compl_q; } ;
struct ath10k {struct ath10k_htt htt; } ;


 int EIO ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int ath10k_htt_rx_deliver_msdu (struct ath10k*,int,int) ;
 int ath10k_htt_rx_handle_amsdu (struct ath10k_htt*) ;
 int ath10k_htt_rx_in_ord_ind (struct ath10k*,struct sk_buff*) ;
 int ath10k_htt_rx_msdu_buff_replenish (struct ath10k_htt*) ;
 int ath10k_htt_rx_tx_fetch_ind (struct ath10k*,struct sk_buff*) ;
 int ath10k_mac_tx_push_pending (struct ath10k*) ;
 int ath10k_txrx_tx_unref (struct ath10k_htt*,struct htt_tx_done*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ kfifo_get (int *,struct htt_tx_done*) ;
 int kfifo_is_empty (int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_splice_init (TYPE_2__*,struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ath10k_htt_txrx_compl_task(struct ath10k *ar, int budget)
{
 struct ath10k_htt *htt = &ar->htt;
 struct htt_tx_done tx_done = {};
 struct sk_buff_head tx_ind_q;
 struct sk_buff *skb;
 unsigned long flags;
 int quota = 0, done, ret;
 bool resched_napi = 0;

 __skb_queue_head_init(&tx_ind_q);




 quota = ath10k_htt_rx_deliver_msdu(ar, quota, budget);
 if (quota == budget) {
  resched_napi = 1;
  goto exit;
 }

 while ((skb = skb_dequeue(&htt->rx_in_ord_compl_q))) {
  spin_lock_bh(&htt->rx_ring.lock);
  ret = ath10k_htt_rx_in_ord_ind(ar, skb);
  spin_unlock_bh(&htt->rx_ring.lock);

  dev_kfree_skb_any(skb);
  if (ret == -EIO) {
   resched_napi = 1;
   goto exit;
  }
 }

 while (atomic_read(&htt->num_mpdus_ready)) {
  ret = ath10k_htt_rx_handle_amsdu(htt);
  if (ret == -EIO) {
   resched_napi = 1;
   goto exit;
  }
  atomic_dec(&htt->num_mpdus_ready);
 }


 quota = ath10k_htt_rx_deliver_msdu(ar, quota, budget);






 if ((quota < budget) && !kfifo_is_empty(&htt->txdone_fifo))
  quota = budget;






 while (kfifo_get(&htt->txdone_fifo, &tx_done))
  ath10k_txrx_tx_unref(htt, &tx_done);

 ath10k_mac_tx_push_pending(ar);

 spin_lock_irqsave(&htt->tx_fetch_ind_q.lock, flags);
 skb_queue_splice_init(&htt->tx_fetch_ind_q, &tx_ind_q);
 spin_unlock_irqrestore(&htt->tx_fetch_ind_q.lock, flags);

 while ((skb = __skb_dequeue(&tx_ind_q))) {
  ath10k_htt_rx_tx_fetch_ind(ar, skb);
  dev_kfree_skb_any(skb);
 }

exit:
 ath10k_htt_rx_msdu_buff_replenish(htt);



 done = resched_napi ? budget : quota;

 return done;
}
