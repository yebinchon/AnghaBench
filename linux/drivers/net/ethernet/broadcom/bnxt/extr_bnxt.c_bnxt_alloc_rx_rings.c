
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt_ring_struct {int grp_idx; int ring_mem; } ;
struct bnxt_rx_ring_info {int rx_agg_bmap_size; int rx_agg_bmap; struct bnxt_ring_struct rx_agg_ring_struct; int xdp_rxq; int page_pool; struct bnxt_ring_struct rx_ring_struct; } ;
struct bnxt {int flags; int rx_nr_rings; int rx_agg_ring_mask; int dev; struct bnxt_rx_ring_info* rx_ring; } ;


 int BNXT_FLAG_AGG_RINGS ;
 int BNXT_FLAG_TPA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEM_TYPE_PAGE_POOL ;
 int bnxt_alloc_ring (struct bnxt*,int *) ;
 int bnxt_alloc_rx_page_pool (struct bnxt*,struct bnxt_rx_ring_info*) ;
 int bnxt_alloc_tpa_info (struct bnxt*) ;
 int kzalloc (int,int ) ;
 int xdp_rxq_info_reg (int *,int ,int) ;
 int xdp_rxq_info_reg_mem_model (int *,int ,int ) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static int bnxt_alloc_rx_rings(struct bnxt *bp)
{
 int i, rc = 0, agg_rings = 0;

 if (!bp->rx_ring)
  return -ENOMEM;

 if (bp->flags & BNXT_FLAG_AGG_RINGS)
  agg_rings = 1;

 for (i = 0; i < bp->rx_nr_rings; i++) {
  struct bnxt_rx_ring_info *rxr = &bp->rx_ring[i];
  struct bnxt_ring_struct *ring;

  ring = &rxr->rx_ring_struct;

  rc = bnxt_alloc_rx_page_pool(bp, rxr);
  if (rc)
   return rc;

  rc = xdp_rxq_info_reg(&rxr->xdp_rxq, bp->dev, i);
  if (rc < 0)
   return rc;

  rc = xdp_rxq_info_reg_mem_model(&rxr->xdp_rxq,
      MEM_TYPE_PAGE_POOL,
      rxr->page_pool);
  if (rc) {
   xdp_rxq_info_unreg(&rxr->xdp_rxq);
   return rc;
  }

  rc = bnxt_alloc_ring(bp, &ring->ring_mem);
  if (rc)
   return rc;

  ring->grp_idx = i;
  if (agg_rings) {
   u16 mem_size;

   ring = &rxr->rx_agg_ring_struct;
   rc = bnxt_alloc_ring(bp, &ring->ring_mem);
   if (rc)
    return rc;

   ring->grp_idx = i;
   rxr->rx_agg_bmap_size = bp->rx_agg_ring_mask + 1;
   mem_size = rxr->rx_agg_bmap_size / 8;
   rxr->rx_agg_bmap = kzalloc(mem_size, GFP_KERNEL);
   if (!rxr->rx_agg_bmap)
    return -ENOMEM;
  }
 }
 if (bp->flags & BNXT_FLAG_TPA)
  rc = bnxt_alloc_tpa_info(bp);
 return rc;
}
