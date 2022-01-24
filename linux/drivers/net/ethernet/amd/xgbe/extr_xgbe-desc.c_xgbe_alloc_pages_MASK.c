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
struct xgbe_prv_data {int /*<<< orphan*/  dev; } ;
struct xgbe_page_alloc {int pages_len; int /*<<< orphan*/  pages_dma; scalar_t__ pages_offset; struct page* pages; } ;
struct page {int dummy; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int NUMA_NO_NODE ; 
 int PAGE_SIZE ; 
 int __GFP_COMP ; 
 int __GFP_NOWARN ; 
 struct page* FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct xgbe_prv_data *pdata,
			    struct xgbe_page_alloc *pa, int alloc_order,
			    int node)
{
	struct page *pages = NULL;
	dma_addr_t pages_dma;
	gfp_t gfp;
	int order;

again:
	order = alloc_order;

	/* Try to obtain pages, decreasing order if necessary */
	gfp = GFP_ATOMIC | __GFP_COMP | __GFP_NOWARN;
	while (order >= 0) {
		pages = FUNC0(node, gfp, order);
		if (pages)
			break;

		order--;
	}

	/* If we couldn't get local pages, try getting from anywhere */
	if (!pages && (node != NUMA_NO_NODE)) {
		node = NUMA_NO_NODE;
		goto again;
	}

	if (!pages)
		return -ENOMEM;

	/* Map the pages */
	pages_dma = FUNC1(pdata->dev, pages, 0,
				 PAGE_SIZE << order, DMA_FROM_DEVICE);
	if (FUNC2(pdata->dev, pages_dma)) {
		FUNC3(pages);
		return -ENOMEM;
	}

	pa->pages = pages;
	pa->pages_len = PAGE_SIZE << order;
	pa->pages_offset = 0;
	pa->pages_dma = pages_dma;

	return 0;
}