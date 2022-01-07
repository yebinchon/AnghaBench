
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {int tx_packets; int tx_bytes; } ;
struct TYPE_2__ {scalar_t__ packets; scalar_t__ bytes; } ;
struct ixgbevf_ring {TYPE_1__ stats; int syncp; } ;


 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void ixgbevf_get_tx_ring_stats(struct rtnl_link_stats64 *stats,
          const struct ixgbevf_ring *ring)
{
 u64 bytes, packets;
 unsigned int start;

 if (ring) {
  do {
   start = u64_stats_fetch_begin_irq(&ring->syncp);
   bytes = ring->stats.bytes;
   packets = ring->stats.packets;
  } while (u64_stats_fetch_retry_irq(&ring->syncp, start));
  stats->tx_bytes += bytes;
  stats->tx_packets += packets;
 }
}
