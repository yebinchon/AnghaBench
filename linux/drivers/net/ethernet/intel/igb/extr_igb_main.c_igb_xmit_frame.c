
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct igb_adapter {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int igb_tx_queue_mapping (struct igb_adapter*,struct sk_buff*) ;
 int igb_xmit_frame_ring (struct sk_buff*,int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ skb_put_padto (struct sk_buff*,int) ;

__attribute__((used)) static netdev_tx_t igb_xmit_frame(struct sk_buff *skb,
      struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);




 if (skb_put_padto(skb, 17))
  return NETDEV_TX_OK;

 return igb_xmit_frame_ring(skb, igb_tx_queue_mapping(adapter, skb));
}
