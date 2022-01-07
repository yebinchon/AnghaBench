
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct igb_q_vector {struct igb_adapter* adapter; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int link_speed; int last_rx_timestamp; struct e1000_hw hw; } ;
struct TYPE_5__ {int hwtstamp; } ;


 int E1000_RXSTMPH ;
 int E1000_RXSTMPL ;
 int E1000_TSYNCRXCTL ;
 int E1000_TSYNCRXCTL_VALID ;
 int IGB_I210_RX_LATENCY_10 ;
 int IGB_I210_RX_LATENCY_100 ;
 int IGB_I210_RX_LATENCY_1000 ;



 scalar_t__ e1000_i210 ;
 int igb_ptp_systim_to_hwtstamp (struct igb_adapter*,TYPE_2__*,int) ;
 int jiffies ;
 int ktime_sub_ns (int ,int) ;
 int rd32 (int ) ;
 TYPE_2__* skb_hwtstamps (struct sk_buff*) ;

void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector,
    struct sk_buff *skb)
{
 struct igb_adapter *adapter = q_vector->adapter;
 struct e1000_hw *hw = &adapter->hw;
 u64 regval;
 int adjust = 0;
 if (!(rd32(E1000_TSYNCRXCTL) & E1000_TSYNCRXCTL_VALID))
  return;

 regval = rd32(E1000_RXSTMPL);
 regval |= (u64)rd32(E1000_RXSTMPH) << 32;

 igb_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb), regval);


 if (adapter->hw.mac.type == e1000_i210) {
  switch (adapter->link_speed) {
  case 130:
   adjust = IGB_I210_RX_LATENCY_10;
   break;
  case 129:
   adjust = IGB_I210_RX_LATENCY_100;
   break;
  case 128:
   adjust = IGB_I210_RX_LATENCY_1000;
   break;
  }
 }
 skb_hwtstamps(skb)->hwtstamp =
  ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);




 adapter->last_rx_timestamp = jiffies;
}
