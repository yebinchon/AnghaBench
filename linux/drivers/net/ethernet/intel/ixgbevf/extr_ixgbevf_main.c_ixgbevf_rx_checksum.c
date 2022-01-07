
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int ip_summed; } ;
struct TYPE_4__ {int csum_err; } ;
struct ixgbevf_ring {TYPE_2__ rx_stats; TYPE_1__* netdev; } ;
struct TYPE_3__ {int features; } ;


 int CHECKSUM_UNNECESSARY ;
 int IXGBE_RXDADV_ERR_IPE ;
 int IXGBE_RXDADV_ERR_TCPE ;
 int IXGBE_RXD_STAT_IPCS ;
 int IXGBE_RXD_STAT_L4CS ;
 int NETIF_F_RXCSUM ;
 scalar_t__ ixgbevf_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static inline void ixgbevf_rx_checksum(struct ixgbevf_ring *ring,
           union ixgbe_adv_rx_desc *rx_desc,
           struct sk_buff *skb)
{
 skb_checksum_none_assert(skb);


 if (!(ring->netdev->features & NETIF_F_RXCSUM))
  return;


 if (ixgbevf_test_staterr(rx_desc, IXGBE_RXD_STAT_IPCS) &&
     ixgbevf_test_staterr(rx_desc, IXGBE_RXDADV_ERR_IPE)) {
  ring->rx_stats.csum_err++;
  return;
 }

 if (!ixgbevf_test_staterr(rx_desc, IXGBE_RXD_STAT_L4CS))
  return;

 if (ixgbevf_test_staterr(rx_desc, IXGBE_RXDADV_ERR_TCPE)) {
  ring->rx_stats.csum_err++;
  return;
 }


 skb->ip_summed = CHECKSUM_UNNECESSARY;
}
