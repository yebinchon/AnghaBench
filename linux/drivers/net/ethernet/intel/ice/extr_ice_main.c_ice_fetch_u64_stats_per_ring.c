
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ bytes; scalar_t__ pkts; } ;
struct ice_ring {TYPE_1__ stats; int syncp; } ;


 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void
ice_fetch_u64_stats_per_ring(struct ice_ring *ring, u64 *pkts, u64 *bytes)
{
 unsigned int start;
 *pkts = 0;
 *bytes = 0;

 if (!ring)
  return;
 do {
  start = u64_stats_fetch_begin_irq(&ring->syncp);
  *pkts = ring->stats.pkts;
  *bytes = ring->stats.bytes;
 } while (u64_stats_fetch_retry_irq(&ring->syncp, start));
}
