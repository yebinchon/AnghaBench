
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int restart_queue2; } ;
struct igc_ring {int tx_syncp2; TYPE_1__ tx_stats; int queue_index; struct net_device* netdev; } ;


 int EBUSY ;
 scalar_t__ const igc_desc_unused (struct igc_ring*) ;
 int netif_stop_subqueue (struct net_device*,int ) ;
 int netif_wake_subqueue (struct net_device*,int ) ;
 int smp_mb () ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int __igc_maybe_stop_tx(struct igc_ring *tx_ring, const u16 size)
{
 struct net_device *netdev = tx_ring->netdev;

 netif_stop_subqueue(netdev, tx_ring->queue_index);


 smp_mb();




 if (igc_desc_unused(tx_ring) < size)
  return -EBUSY;


 netif_wake_subqueue(netdev, tx_ring->queue_index);

 u64_stats_update_begin(&tx_ring->tx_syncp2);
 tx_ring->tx_stats.restart_queue2++;
 u64_stats_update_end(&tx_ring->tx_syncp2);

 return 0;
}
