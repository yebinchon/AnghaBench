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
struct bnxt_ring_struct {int /*<<< orphan*/  ring_mem; } ;
struct bnxt_rx_ring_info {struct bnxt_ring_struct rx_agg_ring_struct; struct bnxt_ring_struct rx_ring_struct; int /*<<< orphan*/ * rx_agg_bmap; int /*<<< orphan*/ * page_pool; int /*<<< orphan*/  xdp_rxq; scalar_t__ xdp_prog; } ;
struct bnxt {int rx_nr_rings; struct bnxt_rx_ring_info* rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bnxt *bp)
{
	int i;

	if (!bp->rx_ring)
		return;

	FUNC1(bp);
	for (i = 0; i < bp->rx_nr_rings; i++) {
		struct bnxt_rx_ring_info *rxr = &bp->rx_ring[i];
		struct bnxt_ring_struct *ring;

		if (rxr->xdp_prog)
			FUNC2(rxr->xdp_prog);

		if (FUNC5(&rxr->xdp_rxq))
			FUNC6(&rxr->xdp_rxq);

		FUNC4(rxr->page_pool);
		rxr->page_pool = NULL;

		FUNC3(rxr->rx_agg_bmap);
		rxr->rx_agg_bmap = NULL;

		ring = &rxr->rx_ring_struct;
		FUNC0(bp, &ring->ring_mem);

		ring = &rxr->rx_agg_ring_struct;
		FUNC0(bp, &ring->ring_mem);
	}
}