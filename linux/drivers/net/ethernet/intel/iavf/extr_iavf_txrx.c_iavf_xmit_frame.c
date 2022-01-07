
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {size_t queue_mapping; scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct iavf_ring {int dummy; } ;
struct iavf_adapter {struct iavf_ring* tx_rings; } ;
typedef int netdev_tx_t ;


 scalar_t__ IAVF_MIN_TX_LEN ;
 int NETDEV_TX_OK ;
 int iavf_xmit_frame_ring (struct sk_buff*,struct iavf_ring*) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ skb_pad (struct sk_buff*,scalar_t__) ;
 int skb_set_tail_pointer (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

netdev_tx_t iavf_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);
 struct iavf_ring *tx_ring = &adapter->tx_rings[skb->queue_mapping];




 if (unlikely(skb->len < IAVF_MIN_TX_LEN)) {
  if (skb_pad(skb, IAVF_MIN_TX_LEN - skb->len))
   return NETDEV_TX_OK;
  skb->len = IAVF_MIN_TX_LEN;
  skb_set_tail_pointer(skb, IAVF_MIN_TX_LEN);
 }

 return iavf_xmit_frame_ring(skb, tx_ring);
}
