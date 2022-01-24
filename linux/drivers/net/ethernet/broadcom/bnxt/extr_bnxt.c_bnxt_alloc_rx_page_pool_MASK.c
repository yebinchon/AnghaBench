#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page_pool_params {int /*<<< orphan*/  dma_dir; int /*<<< orphan*/ * dev; int /*<<< orphan*/  nid; int /*<<< orphan*/  pool_size; int /*<<< orphan*/  member_0; } ;
struct bnxt_rx_ring_info {int /*<<< orphan*/ * page_pool; } ;
struct bnxt {TYPE_1__* pdev; int /*<<< orphan*/  rx_ring_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct page_pool_params*) ; 

__attribute__((used)) static int FUNC4(struct bnxt *bp,
				   struct bnxt_rx_ring_info *rxr)
{
	struct page_pool_params pp = { 0 };

	pp.pool_size = bp->rx_ring_size;
	pp.nid = FUNC2(&bp->pdev->dev);
	pp.dev = &bp->pdev->dev;
	pp.dma_dir = DMA_BIDIRECTIONAL;

	rxr->page_pool = FUNC3(&pp);
	if (FUNC0(rxr->page_pool)) {
		int err = FUNC1(rxr->page_pool);

		rxr->page_pool = NULL;
		return err;
	}
	return 0;
}