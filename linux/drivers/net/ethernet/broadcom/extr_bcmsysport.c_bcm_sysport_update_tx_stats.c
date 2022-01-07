
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct bcm_sysport_tx_ring {scalar_t__ packets; scalar_t__ bytes; } ;
struct bcm_sysport_priv {int syncp; struct bcm_sysport_tx_ring* tx_rings; TYPE_1__* netdev; } ;
struct TYPE_2__ {unsigned int num_tx_queues; } ;


 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void bcm_sysport_update_tx_stats(struct bcm_sysport_priv *priv,
     u64 *tx_bytes, u64 *tx_packets)
{
 struct bcm_sysport_tx_ring *ring;
 u64 bytes = 0, packets = 0;
 unsigned int start;
 unsigned int q;

 for (q = 0; q < priv->netdev->num_tx_queues; q++) {
  ring = &priv->tx_rings[q];
  do {
   start = u64_stats_fetch_begin_irq(&priv->syncp);
   bytes = ring->bytes;
   packets = ring->packets;
  } while (u64_stats_fetch_retry_irq(&priv->syncp, start));

  *tx_bytes += bytes;
  *tx_packets += packets;
 }
}
