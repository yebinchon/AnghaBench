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
typedef  size_t u16 ;
struct sw_rx_page {scalar_t__ offset; int /*<<< orphan*/ * page; } ;
struct eth_rx_sge {void* addr_lo; void* addr_hi; } ;
struct bnx2x_alloc_pool {scalar_t__ offset; int /*<<< orphan*/ * page; } ;
struct bnx2x_fastpath {struct bnx2x_alloc_pool page_pool; struct eth_rx_sge* rx_sge_ring; struct sw_rx_page* rx_page_ring; } ;
struct bnx2x {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGES_PER_SGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ SGE_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sw_rx_page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct bnx2x *bp, struct bnx2x_fastpath *fp,
			      u16 index, gfp_t gfp_mask)
{
	struct sw_rx_page *sw_buf = &fp->rx_page_ring[index];
	struct eth_rx_sge *sge = &fp->rx_sge_ring[index];
	struct bnx2x_alloc_pool *pool = &fp->page_pool;
	dma_addr_t mapping;

	if (!pool->page) {
		pool->page = FUNC3(gfp_mask, PAGES_PER_SGE_SHIFT);
		if (FUNC9(!pool->page))
			return -ENOMEM;

		pool->offset = 0;
	}

	mapping = FUNC5(&bp->pdev->dev, pool->page,
			       pool->offset, SGE_PAGE_SIZE, DMA_FROM_DEVICE);
	if (FUNC9(FUNC6(&bp->pdev->dev, mapping))) {
		FUNC0("Can't map sge\n");
		return -ENOMEM;
	}

	sw_buf->page = pool->page;
	sw_buf->offset = pool->offset;

	FUNC7(sw_buf, mapping, mapping);

	sge->addr_hi = FUNC4(FUNC1(mapping));
	sge->addr_lo = FUNC4(FUNC2(mapping));

	pool->offset += SGE_PAGE_SIZE;
	if (PAGE_SIZE - pool->offset >= SGE_PAGE_SIZE)
		FUNC8(pool->page);
	else
		pool->page = NULL;
	return 0;
}