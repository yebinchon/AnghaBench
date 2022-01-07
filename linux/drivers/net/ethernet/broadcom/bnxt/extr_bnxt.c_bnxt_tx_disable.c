
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_tx_ring_info {int dev_state; } ;
struct bnxt {int tx_nr_rings; int dev; struct bnxt_tx_ring_info* tx_ring; } ;


 int BNXT_DEV_STATE_CLOSING ;
 int netif_carrier_off (int ) ;
 int netif_tx_disable (int ) ;

void bnxt_tx_disable(struct bnxt *bp)
{
 int i;
 struct bnxt_tx_ring_info *txr;

 if (bp->tx_ring) {
  for (i = 0; i < bp->tx_nr_rings; i++) {
   txr = &bp->tx_ring[i];
   txr->dev_state = BNXT_DEV_STATE_CLOSING;
  }
 }

 netif_tx_disable(bp->dev);
 netif_carrier_off(bp->dev);
}
