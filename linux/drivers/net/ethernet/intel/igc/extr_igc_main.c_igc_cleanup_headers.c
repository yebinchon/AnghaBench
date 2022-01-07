
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union igc_adv_rx_desc {int dummy; } igc_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct net_device {int features; } ;
struct igc_ring {struct net_device* netdev; } ;


 int IGC_RXDEXT_ERR_FRAME_ERR_MASK ;
 int NETIF_F_RXALL ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ eth_skb_pad (struct sk_buff*) ;
 int igc_test_staterr (union igc_adv_rx_desc*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool igc_cleanup_headers(struct igc_ring *rx_ring,
    union igc_adv_rx_desc *rx_desc,
    struct sk_buff *skb)
{
 if (unlikely((igc_test_staterr(rx_desc,
           IGC_RXDEXT_ERR_FRAME_ERR_MASK)))) {
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
