
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_ptp {scalar_t__ pending_tx_timestamps; int tx_ts_lock; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;


 scalar_t__ LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool lan743x_ptp_request_tx_timestamp(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;
 bool result = 0;

 spin_lock_bh(&ptp->tx_ts_lock);
 if (ptp->pending_tx_timestamps < LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS) {

  ptp->pending_tx_timestamps++;
  result = 1;
 }
 spin_unlock_bh(&ptp->tx_ts_lock);
 return result;
}
