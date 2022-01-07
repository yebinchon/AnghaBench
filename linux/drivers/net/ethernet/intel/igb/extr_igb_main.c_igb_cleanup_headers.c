
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct net_device {int features; } ;
struct igb_ring {struct net_device* netdev; } ;


 int E1000_RXDEXT_ERR_FRAME_ERR_MASK ;
 int NETIF_F_RXALL ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ eth_skb_pad (struct sk_buff*) ;
 int igb_test_staterr (union e1000_adv_rx_desc*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool igb_cleanup_headers(struct igb_ring *rx_ring,
    union e1000_adv_rx_desc *rx_desc,
    struct sk_buff *skb)
{
 if (unlikely((igb_test_staterr(rx_desc,
           E1000_RXDEXT_ERR_FRAME_ERR_MASK)))) {
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
