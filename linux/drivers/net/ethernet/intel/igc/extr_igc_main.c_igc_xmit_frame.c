
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct igc_adapter {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int igc_tx_queue_mapping (struct igc_adapter*,struct sk_buff*) ;
 int igc_xmit_frame_ring (struct sk_buff*,int ) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ skb_padto (struct sk_buff*,int) ;

__attribute__((used)) static netdev_tx_t igc_xmit_frame(struct sk_buff *skb,
      struct net_device *netdev)
{
 struct igc_adapter *adapter = netdev_priv(netdev);




 if (skb->len < 17) {
  if (skb_padto(skb, 17))
   return NETDEV_TX_OK;
  skb->len = 17;
 }

 return igc_xmit_frame_ring(skb, igc_tx_queue_mapping(adapter, skb));
}
