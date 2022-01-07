
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lan743x_ptp {size_t tx_ts_skb_queue_size; int tx_ts_lock; int tx_ts_ignore_sync_queue; struct sk_buff** tx_ts_skb_queue; } ;
struct lan743x_adapter {int netdev; struct lan743x_ptp ptp; } ;


 int BIT (size_t) ;
 size_t LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS ;
 int dev_kfree_skb (struct sk_buff*) ;
 int drv ;
 int netif_err (struct lan743x_adapter*,int ,int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void lan743x_ptp_tx_ts_enqueue_skb(struct lan743x_adapter *adapter,
       struct sk_buff *skb, bool ignore_sync)
{
 struct lan743x_ptp *ptp = &adapter->ptp;

 spin_lock_bh(&ptp->tx_ts_lock);
 if (ptp->tx_ts_skb_queue_size < LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS) {
  ptp->tx_ts_skb_queue[ptp->tx_ts_skb_queue_size] = skb;
  if (ignore_sync)
   ptp->tx_ts_ignore_sync_queue |=
    BIT(ptp->tx_ts_skb_queue_size);
  ptp->tx_ts_skb_queue_size++;
 } else {




  netif_err(adapter, drv, adapter->netdev,
     "tx ts skb queue overflow\n");
  dev_kfree_skb(skb);
 }
 spin_unlock_bh(&ptp->tx_ts_lock);
}
