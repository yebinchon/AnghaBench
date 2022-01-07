
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lan743x_ptp {int flags; int tx_ts_lock; scalar_t__ pending_tx_timestamps; scalar_t__ tx_ts_queue_size; scalar_t__ tx_ts_skb_queue_size; scalar_t__* tx_ts_nseconds_queue; scalar_t__* tx_ts_seconds_queue; struct sk_buff** tx_ts_skb_queue; int * ptp_clock; } ;
struct lan743x_adapter {int netdev; struct lan743x_ptp ptp; } ;


 int CONFIG_PTP_1588_CLOCK ;
 int INT_BIT_1588_ ;
 int INT_EN_CLR ;
 scalar_t__ IS_ENABLED (int ) ;
 int LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS ;
 int PTP_FLAG_ISR_ENABLED ;
 int PTP_FLAG_PTP_CLOCK_REGISTERED ;
 int PTP_INT_BIT_TX_SWTS_ERR_ ;
 int PTP_INT_BIT_TX_TS_ ;
 int PTP_INT_EN_CLR ;
 int dev_kfree_skb (struct sk_buff*) ;
 int drv ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int lan743x_ptp_disable (struct lan743x_adapter*) ;
 int lan743x_ptp_tx_ts_complete (struct lan743x_adapter*) ;
 int netif_info (struct lan743x_adapter*,int ,int ,char*) ;
 int ptp_clock_unregister (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void lan743x_ptp_close(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;
 int index;

 if (IS_ENABLED(CONFIG_PTP_1588_CLOCK) &&
     ptp->flags & PTP_FLAG_PTP_CLOCK_REGISTERED) {
  ptp_clock_unregister(ptp->ptp_clock);
  ptp->ptp_clock = ((void*)0);
  ptp->flags &= ~PTP_FLAG_PTP_CLOCK_REGISTERED;
  netif_info(adapter, drv, adapter->netdev,
      "ptp clock unregister\n");
 }

 if (ptp->flags & PTP_FLAG_ISR_ENABLED) {
  lan743x_csr_write(adapter, PTP_INT_EN_CLR,
      PTP_INT_BIT_TX_SWTS_ERR_ |
      PTP_INT_BIT_TX_TS_);
  lan743x_csr_write(adapter, INT_EN_CLR, INT_BIT_1588_);
  ptp->flags &= ~PTP_FLAG_ISR_ENABLED;
 }


 lan743x_ptp_tx_ts_complete(adapter);
 spin_lock_bh(&ptp->tx_ts_lock);
 for (index = 0;
  index < LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS;
  index++) {
  struct sk_buff *skb = ptp->tx_ts_skb_queue[index];

  dev_kfree_skb(skb);
  ptp->tx_ts_skb_queue[index] = ((void*)0);
  ptp->tx_ts_seconds_queue[index] = 0;
  ptp->tx_ts_nseconds_queue[index] = 0;
 }
 ptp->tx_ts_skb_queue_size = 0;
 ptp->tx_ts_queue_size = 0;
 ptp->pending_tx_timestamps = 0;
 spin_unlock_bh(&ptp->tx_ts_lock);

 lan743x_ptp_disable(adapter);
}
