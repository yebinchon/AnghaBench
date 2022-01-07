
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_1__* pdev; int tx_hwtstamp_timeouts; int state; int * ptp_tx_skb; int ptp_tx_work; scalar_t__ ptp_tx_start; struct e1000_hw hw; } ;
struct TYPE_2__ {int dev; } ;


 int E1000_TXSTMPH ;
 scalar_t__ IGB_PTP_TX_TIMEOUT ;
 int __IGB_PTP_TX_IN_PROGRESS ;
 int cancel_work_sync (int *) ;
 int clear_bit_unlock (int ,int *) ;
 int dev_kfree_skb_any (int *) ;
 int dev_warn (int *,char*) ;
 int rd32 (int ) ;
 int test_bit (int ,int *) ;
 int time_is_before_jiffies (scalar_t__) ;

void igb_ptp_tx_hang(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 bool timeout = time_is_before_jiffies(adapter->ptp_tx_start +
           IGB_PTP_TX_TIMEOUT);

 if (!adapter->ptp_tx_skb)
  return;

 if (!test_bit(__IGB_PTP_TX_IN_PROGRESS, &adapter->state))
  return;





 if (timeout) {
  cancel_work_sync(&adapter->ptp_tx_work);
  dev_kfree_skb_any(adapter->ptp_tx_skb);
  adapter->ptp_tx_skb = ((void*)0);
  clear_bit_unlock(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
  adapter->tx_hwtstamp_timeouts++;



  rd32(E1000_TXSTMPH);
  dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
 }
}
