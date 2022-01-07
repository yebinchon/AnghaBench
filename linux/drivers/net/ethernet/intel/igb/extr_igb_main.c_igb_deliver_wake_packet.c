
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int protocol; int data; } ;
struct net_device {int dummy; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_WUPL ;
 int E1000_WUPL_MASK ;
 int E1000_WUPM_BYTES ;
 scalar_t__ E1000_WUPM_REG (int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int memcpy_fromio (int ,scalar_t__,int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int rd32 (int ) ;
 int roundup (int,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void igb_deliver_wake_packet(struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct sk_buff *skb;
 u32 wupl;

 wupl = rd32(E1000_WUPL) & E1000_WUPL_MASK;




 if ((wupl == 0) || (wupl > E1000_WUPM_BYTES))
  return;

 skb = netdev_alloc_skb_ip_align(netdev, E1000_WUPM_BYTES);
 if (!skb)
  return;

 skb_put(skb, wupl);


 wupl = roundup(wupl, 4);

 memcpy_fromio(skb->data, hw->hw_addr + E1000_WUPM_REG(0), wupl);

 skb->protocol = eth_type_trans(skb, netdev);
 netif_rx(skb);
}
