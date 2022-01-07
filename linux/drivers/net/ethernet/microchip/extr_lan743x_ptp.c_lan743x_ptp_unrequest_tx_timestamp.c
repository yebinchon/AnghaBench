
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_ptp {scalar_t__ pending_tx_timestamps; int tx_ts_lock; } ;
struct lan743x_adapter {int netdev; struct lan743x_ptp ptp; } ;


 int drv ;
 int netif_err (struct lan743x_adapter*,int ,int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void lan743x_ptp_unrequest_tx_timestamp(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;

 spin_lock_bh(&ptp->tx_ts_lock);
 if (ptp->pending_tx_timestamps > 0)
  ptp->pending_tx_timestamps--;
 else
  netif_err(adapter, drv, adapter->netdev,
     "unrequest failed, pending_tx_timestamps==0\n");
 spin_unlock_bh(&ptp->tx_ts_lock);
}
