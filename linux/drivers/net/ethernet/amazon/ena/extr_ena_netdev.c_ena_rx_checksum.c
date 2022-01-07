
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {void* ip_summed; } ;
struct TYPE_3__ {int csum_unchecked; int csum_good; int bad_csum; } ;
struct ena_ring {int syncp; TYPE_1__ rx_stats; TYPE_2__* netdev; int adapter; } ;
struct ena_com_rx_ctx {scalar_t__ l3_proto; scalar_t__ l4_proto; int l4_csum_err; int l4_csum_checked; scalar_t__ l3_csum_err; scalar_t__ frag; } ;
struct TYPE_4__ {int features; } ;


 void* CHECKSUM_NONE ;
 void* CHECKSUM_UNNECESSARY ;
 scalar_t__ ENA_ETH_IO_L3_PROTO_IPV4 ;
 scalar_t__ ENA_ETH_IO_L4_PROTO_TCP ;
 scalar_t__ ENA_ETH_IO_L4_PROTO_UDP ;
 int NETIF_F_RXCSUM ;
 scalar_t__ likely (int) ;
 int netif_dbg (int ,int ,TYPE_2__*,char*) ;
 int rx_err ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ena_rx_checksum(struct ena_ring *rx_ring,
       struct ena_com_rx_ctx *ena_rx_ctx,
       struct sk_buff *skb)
{

 if (unlikely(!(rx_ring->netdev->features & NETIF_F_RXCSUM))) {
  skb->ip_summed = CHECKSUM_NONE;
  return;
 }


 if (ena_rx_ctx->frag) {
  skb->ip_summed = CHECKSUM_NONE;
  return;
 }


 if (unlikely((ena_rx_ctx->l3_proto == ENA_ETH_IO_L3_PROTO_IPV4) &&
       (ena_rx_ctx->l3_csum_err))) {

  skb->ip_summed = CHECKSUM_NONE;
  u64_stats_update_begin(&rx_ring->syncp);
  rx_ring->rx_stats.bad_csum++;
  u64_stats_update_end(&rx_ring->syncp);
  netif_dbg(rx_ring->adapter, rx_err, rx_ring->netdev,
     "RX IPv4 header checksum error\n");
  return;
 }


 if (likely((ena_rx_ctx->l4_proto == ENA_ETH_IO_L4_PROTO_TCP) ||
     (ena_rx_ctx->l4_proto == ENA_ETH_IO_L4_PROTO_UDP))) {
  if (unlikely(ena_rx_ctx->l4_csum_err)) {

   u64_stats_update_begin(&rx_ring->syncp);
   rx_ring->rx_stats.bad_csum++;
   u64_stats_update_end(&rx_ring->syncp);
   netif_dbg(rx_ring->adapter, rx_err, rx_ring->netdev,
      "RX L4 checksum error\n");
   skb->ip_summed = CHECKSUM_NONE;
   return;
  }

  if (likely(ena_rx_ctx->l4_csum_checked)) {
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   u64_stats_update_begin(&rx_ring->syncp);
   rx_ring->rx_stats.csum_good++;
   u64_stats_update_end(&rx_ring->syncp);
  } else {
   u64_stats_update_begin(&rx_ring->syncp);
   rx_ring->rx_stats.csum_unchecked++;
   u64_stats_update_end(&rx_ring->syncp);
   skb->ip_summed = CHECKSUM_NONE;
  }
 } else {
  skb->ip_summed = CHECKSUM_NONE;
  return;
 }

}
