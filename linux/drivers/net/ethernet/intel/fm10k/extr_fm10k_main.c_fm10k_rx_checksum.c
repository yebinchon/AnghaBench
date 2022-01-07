
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union fm10k_rx_desc {int dummy; } fm10k_rx_desc ;
struct sk_buff {int encapsulation; int ip_summed; } ;
struct TYPE_4__ {int csum_good; int csum_err; } ;
struct fm10k_ring {TYPE_2__ rx_stats; TYPE_1__* netdev; } ;
struct TYPE_3__ {int features; } ;


 int CHECKSUM_UNNECESSARY ;
 int FM10K_RXD_STATUS_IPE ;
 int FM10K_RXD_STATUS_IPE2 ;
 int FM10K_RXD_STATUS_L4CS ;
 int FM10K_RXD_STATUS_L4CS2 ;
 int FM10K_RXD_STATUS_L4E ;
 int FM10K_RXD_STATUS_L4E2 ;
 int NETIF_F_RXCSUM ;
 scalar_t__ fm10k_test_staterr (union fm10k_rx_desc*,int) ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static inline void fm10k_rx_checksum(struct fm10k_ring *ring,
         union fm10k_rx_desc *rx_desc,
         struct sk_buff *skb)
{
 skb_checksum_none_assert(skb);


 if (!(ring->netdev->features & NETIF_F_RXCSUM))
  return;


 if (fm10k_test_staterr(rx_desc,
          FM10K_RXD_STATUS_L4E |
          FM10K_RXD_STATUS_L4E2 |
          FM10K_RXD_STATUS_IPE |
          FM10K_RXD_STATUS_IPE2)) {
  ring->rx_stats.csum_err++;
  return;
 }


 if (fm10k_test_staterr(rx_desc, FM10K_RXD_STATUS_L4CS2))
  skb->encapsulation = 1;
 else if (!fm10k_test_staterr(rx_desc, FM10K_RXD_STATUS_L4CS))
  return;

 skb->ip_summed = CHECKSUM_UNNECESSARY;

 ring->rx_stats.csum_good++;
}
