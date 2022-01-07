
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int state; int * ptp_tx_skb; struct ixgbe_hw hw; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TXSTMPH ;
 int __IXGBE_PTP_TX_IN_PROGRESS ;
 int clear_bit_unlock (int ,int *) ;
 int dev_kfree_skb_any (int *) ;

__attribute__((used)) static void ixgbe_ptp_clear_tx_timestamp(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;

 IXGBE_READ_REG(hw, IXGBE_TXSTMPH);
 if (adapter->ptp_tx_skb) {
  dev_kfree_skb_any(adapter->ptp_tx_skb);
  adapter->ptp_tx_skb = ((void*)0);
 }
 clear_bit_unlock(__IXGBE_PTP_TX_IN_PROGRESS, &adapter->state);
}
