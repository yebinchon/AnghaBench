
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int state; struct sk_buff* ptp_tx_skb; struct ixgbe_hw hw; } ;


 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TXSTMPH ;
 int IXGBE_TXSTMPL ;
 int __IXGBE_PTP_TX_IN_PROGRESS ;
 int clear_bit_unlock (int ,int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ixgbe_ptp_convert_to_hwtstamp (struct ixgbe_adapter*,struct skb_shared_hwtstamps*,int) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;

__attribute__((used)) static void ixgbe_ptp_tx_hwtstamp(struct ixgbe_adapter *adapter)
{
 struct sk_buff *skb = adapter->ptp_tx_skb;
 struct ixgbe_hw *hw = &adapter->hw;
 struct skb_shared_hwtstamps shhwtstamps;
 u64 regval = 0;

 regval |= (u64)IXGBE_READ_REG(hw, IXGBE_TXSTMPL);
 regval |= (u64)IXGBE_READ_REG(hw, IXGBE_TXSTMPH) << 32;
 ixgbe_ptp_convert_to_hwtstamp(adapter, &shhwtstamps, regval);






 adapter->ptp_tx_skb = ((void*)0);
 clear_bit_unlock(__IXGBE_PTP_TX_IN_PROGRESS, &adapter->state);


 skb_tstamp_tx(skb, &shhwtstamps);
 dev_kfree_skb_any(skb);
}
