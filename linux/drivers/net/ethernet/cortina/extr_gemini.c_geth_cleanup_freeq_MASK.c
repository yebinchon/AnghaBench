#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gmac_queue_page {int /*<<< orphan*/  page; } ;
struct gemini_ethernet {int freeq_frag_order; int freeq_order; int /*<<< orphan*/  freeq_dma_base; TYPE_2__* freeq_ring; int /*<<< orphan*/  dev; struct gmac_queue_page* freeq_pages; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  buf_adr; } ;
struct TYPE_4__ {TYPE_1__ word2; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ GLOBAL_SWFQ_RWPTR_REG ; 
 scalar_t__ GLOBAL_SW_FREEQ_BASE_SIZE_REG ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gmac_queue_page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct gemini_ethernet *geth)
{
	unsigned int fpp_order = PAGE_SHIFT - geth->freeq_frag_order;
	unsigned int frag_len = 1 << geth->freeq_frag_order;
	unsigned int len = 1 << geth->freeq_order;
	unsigned int pages = len >> fpp_order;
	unsigned int pn;

	FUNC7(FUNC5(geth->base + GLOBAL_SWFQ_RWPTR_REG),
	       geth->base + GLOBAL_SWFQ_RWPTR_REG + 2);
	FUNC6(0, geth->base + GLOBAL_SW_FREEQ_BASE_SIZE_REG);

	for (pn = 0; pn < pages; pn++) {
		struct gmac_queue_page *gpage;
		dma_addr_t mapping;

		mapping = geth->freeq_ring[pn << fpp_order].word2.buf_adr;
		FUNC1(geth->dev, mapping, frag_len, DMA_FROM_DEVICE);

		gpage = &geth->freeq_pages[pn];
		while (FUNC3(gpage->page) > 0)
			FUNC4(gpage->page);
	}

	FUNC2(geth->freeq_pages);

	FUNC0(geth->dev,
			  sizeof(*geth->freeq_ring) << geth->freeq_order,
			  geth->freeq_ring, geth->freeq_dma_base);
}