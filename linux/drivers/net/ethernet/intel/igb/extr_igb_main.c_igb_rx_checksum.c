
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int status_error; } ;
struct TYPE_8__ {TYPE_3__ upper; } ;
union e1000_adv_rx_desc {TYPE_4__ wb; } ;
struct sk_buff {int len; int ip_summed; } ;
struct TYPE_6__ {int csum_err; } ;
struct igb_ring {int dev; int rx_syncp; TYPE_2__ rx_stats; int flags; TYPE_1__* netdev; } ;
struct TYPE_5__ {int features; } ;


 int CHECKSUM_UNNECESSARY ;
 int E1000_RXDEXT_STATERR_IPE ;
 int E1000_RXDEXT_STATERR_TCPE ;
 int E1000_RXD_STAT_IXSM ;
 int E1000_RXD_STAT_TCPCS ;
 int E1000_RXD_STAT_UDPCS ;
 int IGB_RING_FLAG_RX_SCTP_CSUM ;
 int NETIF_F_RXCSUM ;
 int dev_dbg (int ,char*,int ) ;
 scalar_t__ igb_test_staterr (union e1000_adv_rx_desc*,int) ;
 int le32_to_cpu (int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static inline void igb_rx_checksum(struct igb_ring *ring,
       union e1000_adv_rx_desc *rx_desc,
       struct sk_buff *skb)
{
 skb_checksum_none_assert(skb);


 if (igb_test_staterr(rx_desc, E1000_RXD_STAT_IXSM))
  return;


 if (!(ring->netdev->features & NETIF_F_RXCSUM))
  return;


 if (igb_test_staterr(rx_desc,
        E1000_RXDEXT_STATERR_TCPE |
        E1000_RXDEXT_STATERR_IPE)) {




  if (!((skb->len == 60) &&
        test_bit(IGB_RING_FLAG_RX_SCTP_CSUM, &ring->flags))) {
   u64_stats_update_begin(&ring->rx_syncp);
   ring->rx_stats.csum_err++;
   u64_stats_update_end(&ring->rx_syncp);
  }

  return;
 }

 if (igb_test_staterr(rx_desc, E1000_RXD_STAT_TCPCS |
          E1000_RXD_STAT_UDPCS))
  skb->ip_summed = CHECKSUM_UNNECESSARY;

 dev_dbg(ring->dev, "cksum success: bits %08X\n",
  le32_to_cpu(rx_desc->wb.upper.status_error));
}
