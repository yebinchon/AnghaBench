
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_ring {int state; } ;
struct ixgbe_adapter {struct ixgbe_ring** tx_ring; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int __IXGBE_TX_DISABLED ;
 int ixgbe_xmit_frame_ring (struct sk_buff*,struct ixgbe_adapter*,struct ixgbe_ring*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ skb_put_padto (struct sk_buff*,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static netdev_tx_t __ixgbe_xmit_frame(struct sk_buff *skb,
          struct net_device *netdev,
          struct ixgbe_ring *ring)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_ring *tx_ring;





 if (skb_put_padto(skb, 17))
  return NETDEV_TX_OK;

 tx_ring = ring ? ring : adapter->tx_ring[skb_get_queue_mapping(skb)];
 if (unlikely(test_bit(__IXGBE_TX_DISABLED, &tx_ring->state)))
  return NETDEV_TX_BUSY;

 return ixgbe_xmit_frame_ring(skb, adapter, tx_ring);
}
