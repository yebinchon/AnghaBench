
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {int tx_bytes; int tx_packets; } ;
struct TYPE_2__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct i40e_ring {TYPE_1__ stats; int syncp; } ;


 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void i40e_get_netdev_stats_struct_tx(struct i40e_ring *ring,
         struct rtnl_link_stats64 *stats)
{
 u64 bytes, packets;
 unsigned int start;

 do {
  start = u64_stats_fetch_begin_irq(&ring->syncp);
  packets = ring->stats.packets;
  bytes = ring->stats.bytes;
 } while (u64_stats_fetch_retry_irq(&ring->syncp, start));

 stats->tx_packets += packets;
 stats->tx_bytes += bytes;
}
