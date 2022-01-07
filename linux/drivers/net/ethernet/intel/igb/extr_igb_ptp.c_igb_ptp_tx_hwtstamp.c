
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int link_speed; int state; struct sk_buff* ptp_tx_skb; struct e1000_hw hw; } ;


 int E1000_TXSTMPH ;
 int E1000_TXSTMPL ;
 int IGB_I210_TX_LATENCY_10 ;
 int IGB_I210_TX_LATENCY_100 ;
 int IGB_I210_TX_LATENCY_1000 ;



 int __IGB_PTP_TX_IN_PROGRESS ;
 int clear_bit_unlock (int ,int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ e1000_i210 ;
 int igb_ptp_systim_to_hwtstamp (struct igb_adapter*,struct skb_shared_hwtstamps*,int) ;
 int ktime_add_ns (int ,int) ;
 int rd32 (int ) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;

__attribute__((used)) static void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter)
{
 struct sk_buff *skb = adapter->ptp_tx_skb;
 struct e1000_hw *hw = &adapter->hw;
 struct skb_shared_hwtstamps shhwtstamps;
 u64 regval;
 int adjust = 0;

 regval = rd32(E1000_TXSTMPL);
 regval |= (u64)rd32(E1000_TXSTMPH) << 32;

 igb_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval);

 if (adapter->hw.mac.type == e1000_i210) {
  switch (adapter->link_speed) {
  case 130:
   adjust = IGB_I210_TX_LATENCY_10;
   break;
  case 129:
   adjust = IGB_I210_TX_LATENCY_100;
   break;
  case 128:
   adjust = IGB_I210_TX_LATENCY_1000;
   break;
  }
 }

 shhwtstamps.hwtstamp =
  ktime_add_ns(shhwtstamps.hwtstamp, adjust);






 adapter->ptp_tx_skb = ((void*)0);
 clear_bit_unlock(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);


 skb_tstamp_tx(skb, &shhwtstamps);
 dev_kfree_skb_any(skb);
}
