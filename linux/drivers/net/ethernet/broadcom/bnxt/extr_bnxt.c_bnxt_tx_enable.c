
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_tx_ring_info {scalar_t__ dev_state; } ;
struct TYPE_2__ {scalar_t__ link_up; } ;
struct bnxt {int tx_nr_rings; int dev; TYPE_1__ link_info; struct bnxt_tx_ring_info* tx_ring; } ;


 int netif_carrier_on (int ) ;
 int netif_tx_wake_all_queues (int ) ;

void bnxt_tx_enable(struct bnxt *bp)
{
 int i;
 struct bnxt_tx_ring_info *txr;

 for (i = 0; i < bp->tx_nr_rings; i++) {
  txr = &bp->tx_ring[i];
  txr->dev_state = 0;
 }
 netif_tx_wake_all_queues(bp->dev);
 if (bp->link_info.link_up)
  netif_carrier_on(bp->dev);
}
