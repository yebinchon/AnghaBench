
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct net_device {int features; } ;
struct ixgbevf_ring {struct net_device* netdev; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int IXGBE_RXDADV_ERR_FRAME_ERR_MASK ;
 int NETIF_F_RXALL ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ eth_skb_pad (struct sk_buff*) ;
 int ixgbevf_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool ixgbevf_cleanup_headers(struct ixgbevf_ring *rx_ring,
        union ixgbe_adv_rx_desc *rx_desc,
        struct sk_buff *skb)
{

 if (IS_ERR(skb))
  return 1;


 if (unlikely(ixgbevf_test_staterr(rx_desc,
       IXGBE_RXDADV_ERR_FRAME_ERR_MASK))) {
  struct net_device *netdev = rx_ring->netdev;

  if (!(netdev->features & NETIF_F_RXALL)) {
   dev_kfree_skb_any(skb);
   return 1;
  }
 }


 if (eth_skb_pad(skb))
  return 1;

 return 0;
}
