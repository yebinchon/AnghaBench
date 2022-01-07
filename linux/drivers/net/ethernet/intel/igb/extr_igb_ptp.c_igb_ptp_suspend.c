
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int ptp_flags; int state; int * ptp_tx_skb; int ptp_tx_work; int ptp_overflow_work; } ;


 int IGB_PTP_ENABLED ;
 int IGB_PTP_OVERFLOW_CHECK ;
 int __IGB_PTP_TX_IN_PROGRESS ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int clear_bit_unlock (int ,int *) ;
 int dev_kfree_skb_any (int *) ;

void igb_ptp_suspend(struct igb_adapter *adapter)
{
 if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
  return;

 if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
  cancel_delayed_work_sync(&adapter->ptp_overflow_work);

 cancel_work_sync(&adapter->ptp_tx_work);
 if (adapter->ptp_tx_skb) {
  dev_kfree_skb_any(adapter->ptp_tx_skb);
  adapter->ptp_tx_skb = ((void*)0);
  clear_bit_unlock(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
 }
}
