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
struct TYPE_2__ {unsigned int wptr; unsigned int rptr; } ;
union dma_rwptr {TYPE_1__ bits; int /*<<< orphan*/  bits32; } ;
struct page {int dummy; } ;
struct gmac_queue_page {struct page* page; } ;
struct gemini_ethernet {unsigned int freeq_frag_order; unsigned int freeq_order; int /*<<< orphan*/  freeq_lock; scalar_t__ base; int /*<<< orphan*/  dev; struct gmac_queue_page* freeq_pages; } ;

/* Variables and functions */
 scalar_t__ GLOBAL_SWFQ_RWPTR_REG ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int,int) ; 
 struct page* FUNC1 (struct gemini_ethernet*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC8(struct gemini_ethernet *geth, bool refill)
{
	unsigned int fpp_order = PAGE_SHIFT - geth->freeq_frag_order;
	unsigned int count = 0;
	unsigned int pn, epn;
	unsigned long flags;
	union dma_rwptr rw;
	unsigned int m_pn;

	/* Mask for page */
	m_pn = (1 << (geth->freeq_order - fpp_order)) - 1;

	FUNC5(&geth->freeq_lock, flags);

	rw.bits32 = FUNC4(geth->base + GLOBAL_SWFQ_RWPTR_REG);
	pn = (refill ? rw.bits.wptr : rw.bits.rptr) >> fpp_order;
	epn = (rw.bits.rptr >> fpp_order) - 1;
	epn &= m_pn;

	/* Loop over the freeq ring buffer entries */
	while (pn != epn) {
		struct gmac_queue_page *gpage;
		struct page *page;

		gpage = &geth->freeq_pages[pn];
		page = gpage->page;

		FUNC0(geth->dev, "fill entry %d page ref count %d add %d refs\n",
			pn, FUNC3(page), 1 << fpp_order);

		if (FUNC3(page) > 1) {
			unsigned int fl = (pn - epn) & m_pn;

			if (fl > 64 >> fpp_order)
				break;

			page = FUNC1(geth, pn);
			if (!page)
				break;
		}

		/* Add one reference per fragment in the page */
		FUNC2(page, 1 << fpp_order);
		count += 1 << fpp_order;
		pn++;
		pn &= m_pn;
	}

	FUNC7(pn << fpp_order, geth->base + GLOBAL_SWFQ_RWPTR_REG + 2);

	FUNC6(&geth->freeq_lock, flags);

	return count;
}