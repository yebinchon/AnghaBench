
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_adapter {struct ixgbevf_ring** tx_ring; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ixgbevf_xmit_frame_ring (struct sk_buff*,struct ixgbevf_ring*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ skb_padto (struct sk_buff*,int) ;

__attribute__((used)) static netdev_tx_t ixgbevf_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbevf_ring *tx_ring;

 if (skb->len <= 0) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }




 if (skb->len < 17) {
  if (skb_padto(skb, 17))
   return NETDEV_TX_OK;
  skb->len = 17;
 }

 tx_ring = adapter->tx_ring[skb->queue_mapping];
 return ixgbevf_xmit_frame_ring(skb, tx_ring);
}
