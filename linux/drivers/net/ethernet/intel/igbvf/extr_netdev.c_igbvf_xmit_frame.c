
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct igbvf_ring {int dummy; } ;
struct igbvf_adapter {struct igbvf_ring* tx_ring; int state; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int __IGBVF_DOWN ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int igbvf_xmit_frame_ring_adv (struct sk_buff*,struct net_device*,struct igbvf_ring*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static netdev_tx_t igbvf_xmit_frame(struct sk_buff *skb,
        struct net_device *netdev)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct igbvf_ring *tx_ring;

 if (test_bit(__IGBVF_DOWN, &adapter->state)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 tx_ring = &adapter->tx_ring[0];

 return igbvf_xmit_frame_ring_adv(skb, netdev, tx_ring);
}
