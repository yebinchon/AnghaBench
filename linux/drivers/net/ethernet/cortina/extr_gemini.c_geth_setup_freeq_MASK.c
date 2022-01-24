#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int swfq_empty; } ;
union queue_threshold {int bits32; TYPE_1__ bits; } ;
struct TYPE_7__ {int sw_skb_size; } ;
union dma_skb_size {int bits32; TYPE_2__ bits; } ;
struct gmac_queue_page {int /*<<< orphan*/  page; } ;
struct gemini_ethernet {int freeq_frag_order; int freeq_order; int freeq_dma_base; unsigned int num_freeq_pages; TYPE_4__* freeq_ring; int /*<<< orphan*/  dev; struct gmac_queue_page* freeq_pages; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  buf_adr; } ;
struct TYPE_9__ {TYPE_3__ word2; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int DMA_Q_BASE_MASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GLOBAL_DMA_SKB_SIZE_REG ; 
 scalar_t__ GLOBAL_QUEUE_THRESHOLD_REG ; 
 scalar_t__ GLOBAL_SW_FREEQ_BASE_SIZE_REG ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct gemini_ethernet*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gemini_ethernet*,unsigned int) ; 
 struct gmac_queue_page* FUNC7 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gmac_queue_page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct gemini_ethernet *geth)
{
	unsigned int fpp_order = PAGE_SHIFT - geth->freeq_frag_order;
	unsigned int frag_len = 1 << geth->freeq_frag_order;
	unsigned int len = 1 << geth->freeq_order;
	unsigned int pages = len >> fpp_order;
	union queue_threshold qt;
	union dma_skb_size skbsz;
	unsigned int filled;
	unsigned int pn;

	geth->freeq_ring = FUNC2(geth->dev,
		sizeof(*geth->freeq_ring) << geth->freeq_order,
		&geth->freeq_dma_base, GFP_KERNEL);
	if (!geth->freeq_ring)
		return -ENOMEM;
	if (geth->freeq_dma_base & ~DMA_Q_BASE_MASK) {
		FUNC1(geth->dev, "queue ring base is not aligned\n");
		goto err_freeq;
	}

	/* Allocate a mapping to page look-up index */
	geth->freeq_pages = FUNC7(pages, sizeof(*geth->freeq_pages),
				    GFP_KERNEL);
	if (!geth->freeq_pages)
		goto err_freeq;
	geth->num_freeq_pages = pages;

	FUNC0(geth->dev, "allocate %d pages for queue\n", pages);
	for (pn = 0; pn < pages; pn++)
		if (!FUNC6(geth, pn))
			goto err_freeq_alloc;

	filled = FUNC5(geth, false);
	if (!filled)
		goto err_freeq_alloc;

	qt.bits32 = FUNC10(geth->base + GLOBAL_QUEUE_THRESHOLD_REG);
	qt.bits.swfq_empty = 32;
	FUNC11(qt.bits32, geth->base + GLOBAL_QUEUE_THRESHOLD_REG);

	skbsz.bits.sw_skb_size = 1 << geth->freeq_frag_order;
	FUNC11(skbsz.bits32, geth->base + GLOBAL_DMA_SKB_SIZE_REG);
	FUNC11(geth->freeq_dma_base | geth->freeq_order,
	       geth->base + GLOBAL_SW_FREEQ_BASE_SIZE_REG);

	return 0;

err_freeq_alloc:
	while (pn > 0) {
		struct gmac_queue_page *gpage;
		dma_addr_t mapping;

		--pn;
		mapping = geth->freeq_ring[pn << fpp_order].word2.buf_adr;
		FUNC4(geth->dev, mapping, frag_len, DMA_FROM_DEVICE);
		gpage = &geth->freeq_pages[pn];
		FUNC9(gpage->page);
	}

	FUNC8(geth->freeq_pages);
err_freeq:
	FUNC3(geth->dev,
			  sizeof(*geth->freeq_ring) << geth->freeq_order,
			  geth->freeq_ring, geth->freeq_dma_base);
	geth->freeq_ring = NULL;
	return -ENOMEM;
}