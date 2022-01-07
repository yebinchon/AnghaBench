
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int tx_hwtstamp_timeouts; int ptp_tx_work; int state; int ptp_tx_skb; scalar_t__ ptp_tx_start; } ;


 scalar_t__ IXGBE_PTP_TX_TIMEOUT ;
 int __IXGBE_PTP_TX_IN_PROGRESS ;
 int cancel_work_sync (int *) ;
 int drv ;
 int e_warn (int ,char*) ;
 int ixgbe_ptp_clear_tx_timestamp (struct ixgbe_adapter*) ;
 int test_bit (int ,int *) ;
 int time_is_before_jiffies (scalar_t__) ;

void ixgbe_ptp_tx_hang(struct ixgbe_adapter *adapter)
{
 bool timeout = time_is_before_jiffies(adapter->ptp_tx_start +
           IXGBE_PTP_TX_TIMEOUT);

 if (!adapter->ptp_tx_skb)
  return;

 if (!test_bit(__IXGBE_PTP_TX_IN_PROGRESS, &adapter->state))
  return;





 if (timeout) {
  cancel_work_sync(&adapter->ptp_tx_work);
  ixgbe_ptp_clear_tx_timestamp(adapter);
  adapter->tx_hwtstamp_timeouts++;
  e_warn(drv, "clearing Tx timestamp hang\n");
 }
}
