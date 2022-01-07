
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct lan743x_ptp {size_t tx_ts_queue_size; int tx_ts_lock; void** tx_ts_header_queue; void** tx_ts_nseconds_queue; void** tx_ts_seconds_queue; } ;
struct lan743x_adapter {int netdev; struct lan743x_ptp ptp; } ;


 size_t LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS ;
 int drv ;
 int netif_err (struct lan743x_adapter*,int ,int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void lan743x_ptp_tx_ts_enqueue_ts(struct lan743x_adapter *adapter,
      u32 seconds, u32 nano_seconds,
      u32 header)
{
 struct lan743x_ptp *ptp = &adapter->ptp;

 spin_lock_bh(&ptp->tx_ts_lock);
 if (ptp->tx_ts_queue_size < LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS) {
  ptp->tx_ts_seconds_queue[ptp->tx_ts_queue_size] = seconds;
  ptp->tx_ts_nseconds_queue[ptp->tx_ts_queue_size] = nano_seconds;
  ptp->tx_ts_header_queue[ptp->tx_ts_queue_size] = header;
  ptp->tx_ts_queue_size++;
 } else {
  netif_err(adapter, drv, adapter->netdev,
     "tx ts queue overflow\n");
 }
 spin_unlock_bh(&ptp->tx_ts_lock);
}
