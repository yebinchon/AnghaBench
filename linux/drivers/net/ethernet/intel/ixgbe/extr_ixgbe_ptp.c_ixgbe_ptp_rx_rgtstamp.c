
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ixgbe_q_vector {struct ixgbe_adapter* adapter; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXSTMPH ;
 int IXGBE_RXSTMPL ;
 int IXGBE_TSYNCRXCTL ;
 int IXGBE_TSYNCRXCTL_VALID ;
 int ixgbe_ptp_convert_to_hwtstamp (struct ixgbe_adapter*,int ,int) ;
 int skb_hwtstamps (struct sk_buff*) ;

void ixgbe_ptp_rx_rgtstamp(struct ixgbe_q_vector *q_vector,
      struct sk_buff *skb)
{
 struct ixgbe_adapter *adapter;
 struct ixgbe_hw *hw;
 u64 regval = 0;
 u32 tsyncrxctl;


 if (!q_vector || !q_vector->adapter)
  return;

 adapter = q_vector->adapter;
 hw = &adapter->hw;





 tsyncrxctl = IXGBE_READ_REG(hw, IXGBE_TSYNCRXCTL);
 if (!(tsyncrxctl & IXGBE_TSYNCRXCTL_VALID))
  return;

 regval |= (u64)IXGBE_READ_REG(hw, IXGBE_RXSTMPL);
 regval |= (u64)IXGBE_READ_REG(hw, IXGBE_RXSTMPH) << 32;

 ixgbe_ptp_convert_to_hwtstamp(adapter, skb_hwtstamps(skb), regval);
}
