#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct bnxt_ring_struct {int grp_idx; int /*<<< orphan*/  ring_mem; } ;
struct bnxt_rx_ring_info {int rx_agg_bmap_size; int /*<<< orphan*/  rx_agg_bmap; struct bnxt_ring_struct rx_agg_ring_struct; int /*<<< orphan*/  xdp_rxq; int /*<<< orphan*/  page_pool; struct bnxt_ring_struct rx_ring_struct; } ;
struct bnxt {int flags; int rx_nr_rings; int rx_agg_ring_mask; int /*<<< orphan*/  dev; struct bnxt_rx_ring_info* rx_ring; } ;

/* Variables and functions */
 int BNXT_FLAG_AGG_RINGS ; 
 int BNXT_FLAG_TPA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEM_TYPE_PAGE_POOL ; 
 int FUNC0 (struct bnxt*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bnxt*,struct bnxt_rx_ring_info*) ; 
 int FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct bnxt *bp)
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

		rc = FUNC1(bp, rxr);
		if (rc)
			return rc;

		rc = FUNC4(&rxr->xdp_rxq, bp->dev, i);
		if (rc < 0)
			return rc;

		rc = FUNC5(&rxr->xdp_rxq,
						MEM_TYPE_PAGE_POOL,
						rxr->page_pool);
		if (rc) {
			FUNC6(&rxr->xdp_rxq);
			return rc;
		}

		rc = FUNC0(bp, &ring->ring_mem);
		if (rc)
			return rc;

		ring->grp_idx = i;
		if (agg_rings) {
			u16 mem_size;

			ring = &rxr->rx_agg_ring_struct;
			rc = FUNC0(bp, &ring->ring_mem);
			if (rc)
				return rc;

			ring->grp_idx = i;
			rxr->rx_agg_bmap_size = bp->rx_agg_ring_mask + 1;
			mem_size = rxr->rx_agg_bmap_size / 8;
			rxr->rx_agg_bmap = FUNC3(mem_size, GFP_KERNEL);
			if (!rxr->rx_agg_bmap)
				return -ENOMEM;
		}
	}
	if (bp->flags & BNXT_FLAG_TPA)
		rc = FUNC2(bp);
	return rc;
}