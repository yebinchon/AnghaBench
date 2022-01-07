
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int * bnapi; int * rx_ring; int * tx_ring; int * tx_ring_map; } ;


 int bnxt_clear_ring_indices (struct bnxt*) ;
 int bnxt_free_cp_rings (struct bnxt*) ;
 int bnxt_free_ntp_fltrs (struct bnxt*,int) ;
 int bnxt_free_ring_grps (struct bnxt*) ;
 int bnxt_free_ring_stats (struct bnxt*) ;
 int bnxt_free_rx_rings (struct bnxt*) ;
 int bnxt_free_tx_rings (struct bnxt*) ;
 int bnxt_free_vnic_attributes (struct bnxt*) ;
 int bnxt_free_vnics (struct bnxt*) ;
 int kfree (int *) ;

__attribute__((used)) static void bnxt_free_mem(struct bnxt *bp, bool irq_re_init)
{
 bnxt_free_vnic_attributes(bp);
 bnxt_free_tx_rings(bp);
 bnxt_free_rx_rings(bp);
 bnxt_free_cp_rings(bp);
 bnxt_free_ntp_fltrs(bp, irq_re_init);
 if (irq_re_init) {
  bnxt_free_ring_stats(bp);
  bnxt_free_ring_grps(bp);
  bnxt_free_vnics(bp);
  kfree(bp->tx_ring_map);
  bp->tx_ring_map = ((void*)0);
  kfree(bp->tx_ring);
  bp->tx_ring = ((void*)0);
  kfree(bp->rx_ring);
  bp->rx_ring = ((void*)0);
  kfree(bp->bnapi);
  bp->bnapi = ((void*)0);
 } else {
  bnxt_clear_ring_indices(bp);
 }
}
