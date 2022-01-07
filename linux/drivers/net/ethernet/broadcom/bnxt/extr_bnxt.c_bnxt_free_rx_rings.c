
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_ring_struct {int ring_mem; } ;
struct bnxt_rx_ring_info {struct bnxt_ring_struct rx_agg_ring_struct; struct bnxt_ring_struct rx_ring_struct; int * rx_agg_bmap; int * page_pool; int xdp_rxq; scalar_t__ xdp_prog; } ;
struct bnxt {int rx_nr_rings; struct bnxt_rx_ring_info* rx_ring; } ;


 int bnxt_free_ring (struct bnxt*,int *) ;
 int bnxt_free_tpa_info (struct bnxt*) ;
 int bpf_prog_put (scalar_t__) ;
 int kfree (int *) ;
 int page_pool_destroy (int *) ;
 scalar_t__ xdp_rxq_info_is_reg (int *) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static void bnxt_free_rx_rings(struct bnxt *bp)
{
 int i;

 if (!bp->rx_ring)
  return;

 bnxt_free_tpa_info(bp);
 for (i = 0; i < bp->rx_nr_rings; i++) {
  struct bnxt_rx_ring_info *rxr = &bp->rx_ring[i];
  struct bnxt_ring_struct *ring;

  if (rxr->xdp_prog)
   bpf_prog_put(rxr->xdp_prog);

  if (xdp_rxq_info_is_reg(&rxr->xdp_rxq))
   xdp_rxq_info_unreg(&rxr->xdp_rxq);

  page_pool_destroy(rxr->page_pool);
  rxr->page_pool = ((void*)0);

  kfree(rxr->rx_agg_bmap);
  rxr->rx_agg_bmap = ((void*)0);

  ring = &rxr->rx_ring_struct;
  bnxt_free_ring(bp, &ring->ring_mem);

  ring = &rxr->rx_agg_ring_struct;
  bnxt_free_ring(bp, &ring->ring_mem);
 }
}
