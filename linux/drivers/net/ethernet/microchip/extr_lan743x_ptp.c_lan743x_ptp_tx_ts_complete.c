
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tstamps ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct lan743x_ptp {int tx_ts_skb_queue_size; int tx_ts_queue_size; int tx_ts_ignore_sync_queue; int* tx_ts_nseconds_queue; int* tx_ts_seconds_queue; int* tx_ts_header_queue; int pending_tx_timestamps; int tx_ts_lock; struct sk_buff** tx_ts_skb_queue; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;


 int BIT (int) ;
 int LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS ;
 int PTP_TX_MSG_HEADER_MSG_TYPE_ ;
 int PTP_TX_MSG_HEADER_MSG_TYPE_SYNC_ ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ktime_set (int,int) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void lan743x_ptp_tx_ts_complete(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;
 struct skb_shared_hwtstamps tstamps;
 u32 header, nseconds, seconds;
 bool ignore_sync = 0;
 struct sk_buff *skb;
 int c, i;

 spin_lock_bh(&ptp->tx_ts_lock);
 c = ptp->tx_ts_skb_queue_size;

 if (c > ptp->tx_ts_queue_size)
  c = ptp->tx_ts_queue_size;
 if (c <= 0)
  goto done;

 for (i = 0; i < c; i++) {
  ignore_sync = ((ptp->tx_ts_ignore_sync_queue &
    BIT(i)) != 0);
  skb = ptp->tx_ts_skb_queue[i];
  nseconds = ptp->tx_ts_nseconds_queue[i];
  seconds = ptp->tx_ts_seconds_queue[i];
  header = ptp->tx_ts_header_queue[i];

  memset(&tstamps, 0, sizeof(tstamps));
  tstamps.hwtstamp = ktime_set(seconds, nseconds);
  if (!ignore_sync ||
      ((header & PTP_TX_MSG_HEADER_MSG_TYPE_) !=
      PTP_TX_MSG_HEADER_MSG_TYPE_SYNC_))
   skb_tstamp_tx(skb, &tstamps);

  dev_kfree_skb(skb);

  ptp->tx_ts_skb_queue[i] = ((void*)0);
  ptp->tx_ts_seconds_queue[i] = 0;
  ptp->tx_ts_nseconds_queue[i] = 0;
  ptp->tx_ts_header_queue[i] = 0;
 }


 ptp->tx_ts_ignore_sync_queue >>= c;
 for (i = c; i < LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS; i++) {
  ptp->tx_ts_skb_queue[i - c] = ptp->tx_ts_skb_queue[i];
  ptp->tx_ts_seconds_queue[i - c] = ptp->tx_ts_seconds_queue[i];
  ptp->tx_ts_nseconds_queue[i - c] = ptp->tx_ts_nseconds_queue[i];
  ptp->tx_ts_header_queue[i - c] = ptp->tx_ts_header_queue[i];

  ptp->tx_ts_skb_queue[i] = ((void*)0);
  ptp->tx_ts_seconds_queue[i] = 0;
  ptp->tx_ts_nseconds_queue[i] = 0;
  ptp->tx_ts_header_queue[i] = 0;
 }
 ptp->tx_ts_skb_queue_size -= c;
 ptp->tx_ts_queue_size -= c;
done:
 ptp->pending_tx_timestamps -= c;
 spin_unlock_bh(&ptp->tx_ts_lock);
}
