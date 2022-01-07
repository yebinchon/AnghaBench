
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pkt_info; } ;
struct TYPE_8__ {TYPE_1__ hs_rss; } ;
struct TYPE_9__ {TYPE_2__ lo_dword; } ;
struct TYPE_10__ {TYPE_3__ lower; } ;
union ixgbe_adv_rx_desc {TYPE_4__ wb; } ;
struct sk_buff {int encapsulation; int csum_level; int ip_summed; } ;
struct TYPE_12__ {int csum_err; } ;
struct ixgbe_ring {TYPE_6__ rx_stats; int state; TYPE_5__* netdev; } ;
typedef int __le16 ;
struct TYPE_11__ {int features; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int IXGBE_RXDADV_ERR_IPE ;
 int IXGBE_RXDADV_ERR_OUTERIPER ;
 int IXGBE_RXDADV_ERR_TCPE ;
 int IXGBE_RXDADV_PKTTYPE_UDP ;
 int IXGBE_RXDADV_PKTTYPE_VXLAN ;
 int IXGBE_RXD_STAT_IPCS ;
 int IXGBE_RXD_STAT_L4CS ;
 int IXGBE_RXD_STAT_OUTERIPCS ;
 int NETIF_F_RXCSUM ;
 int __IXGBE_RX_CSUM_UDP_ZERO_ERR ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void ixgbe_rx_checksum(struct ixgbe_ring *ring,
         union ixgbe_adv_rx_desc *rx_desc,
         struct sk_buff *skb)
{
 __le16 pkt_info = rx_desc->wb.lower.lo_dword.hs_rss.pkt_info;
 bool encap_pkt = 0;

 skb_checksum_none_assert(skb);


 if (!(ring->netdev->features & NETIF_F_RXCSUM))
  return;


 if (pkt_info & cpu_to_le16(IXGBE_RXDADV_PKTTYPE_VXLAN)) {
  encap_pkt = 1;
  skb->encapsulation = 1;
 }


 if (ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_IPCS) &&
     ixgbe_test_staterr(rx_desc, IXGBE_RXDADV_ERR_IPE)) {
  ring->rx_stats.csum_err++;
  return;
 }

 if (!ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_L4CS))
  return;

 if (ixgbe_test_staterr(rx_desc, IXGBE_RXDADV_ERR_TCPE)) {




  if ((pkt_info & cpu_to_le16(IXGBE_RXDADV_PKTTYPE_UDP)) &&
      test_bit(__IXGBE_RX_CSUM_UDP_ZERO_ERR, &ring->state))
   return;

  ring->rx_stats.csum_err++;
  return;
 }


 skb->ip_summed = CHECKSUM_UNNECESSARY;
 if (encap_pkt) {
  if (!ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_OUTERIPCS))
   return;

  if (ixgbe_test_staterr(rx_desc, IXGBE_RXDADV_ERR_OUTERIPER)) {
   skb->ip_summed = CHECKSUM_NONE;
   return;
  }

  skb->csum_level = 1;
 }
}
