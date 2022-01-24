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
struct sge_fl {unsigned int avail; size_t pidx; size_t size; unsigned int pend_cred; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/ * desc; struct rx_sw_desc* sdesc; int /*<<< orphan*/  alloc_failed; int /*<<< orphan*/  large_alloc_failed; } ;
struct sge {int fl_pg_order; int /*<<< orphan*/  starving_fl; } ;
struct rx_sw_desc {int dummy; } ;
struct page {int dummy; } ;
struct adapter {struct sge sge; int /*<<< orphan*/  pdev_dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FL_PER_EQ_UNIT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  RX_LARGE_BUF ; 
 int /*<<< orphan*/  __GFP_NOWARN ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct adapter*,struct sge_fl*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,struct sge_fl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rx_sw_desc*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static unsigned int FUNC15(struct adapter *adapter, struct sge_fl *fl,
			      int n, gfp_t gfp)
{
	struct sge *s = &adapter->sge;
	struct page *page;
	dma_addr_t dma_addr;
	unsigned int cred = fl->avail;
	__be64 *d = &fl->desc[fl->pidx];
	struct rx_sw_desc *sdesc = &fl->sdesc[fl->pidx];

	/*
	 * Sanity: ensure that the result of adding n Free List buffers
	 * won't result in wrapping the SGE's Producer Index around to
	 * it's Consumer Index thereby indicating an empty Free List ...
	 */
	FUNC0(fl->avail + n > fl->size - FL_PER_EQ_UNIT);

	gfp |= __GFP_NOWARN;

	/*
	 * If we support large pages, prefer large buffers and fail over to
	 * small pages if we can't allocate large pages to satisfy the refill.
	 * If we don't support large pages, drop directly into the small page
	 * allocation code.
	 */
	if (s->fl_pg_order == 0)
		goto alloc_small_pages;

	while (n) {
		page = FUNC2(gfp, s->fl_pg_order);
		if (FUNC14(!page)) {
			/*
			 * We've failed inour attempt to allocate a "large
			 * page".  Fail over to the "small page" allocation
			 * below.
			 */
			fl->large_alloc_failed++;
			break;
		}
		FUNC8(page, PAGE_SIZE << s->fl_pg_order);

		dma_addr = FUNC5(adapter->pdev_dev, page, 0,
					PAGE_SIZE << s->fl_pg_order,
					PCI_DMA_FROMDEVICE);
		if (FUNC14(FUNC6(adapter->pdev_dev, dma_addr))) {
			/*
			 * We've run out of DMA mapping space.  Free up the
			 * buffer and return with what we've managed to put
			 * into the free list.  We don't want to fail over to
			 * the small page allocation below in this case
			 * because DMA mapping resources are typically
			 * critical resources once they become scarse.
			 */
			FUNC3(page, s->fl_pg_order);
			goto out;
		}
		dma_addr |= RX_LARGE_BUF;
		*d++ = FUNC4(dma_addr);

		FUNC12(sdesc, page, dma_addr);
		sdesc++;

		fl->avail++;
		if (++fl->pidx == fl->size) {
			fl->pidx = 0;
			sdesc = fl->sdesc;
			d = fl->desc;
		}
		n--;
	}

alloc_small_pages:
	while (n--) {
		page = FUNC1(gfp);
		if (FUNC14(!page)) {
			fl->alloc_failed++;
			break;
		}
		FUNC8(page, PAGE_SIZE);

		dma_addr = FUNC5(adapter->pdev_dev, page, 0, PAGE_SIZE,
				       PCI_DMA_FROMDEVICE);
		if (FUNC14(FUNC6(adapter->pdev_dev, dma_addr))) {
			FUNC9(page);
			break;
		}
		*d++ = FUNC4(dma_addr);

		FUNC12(sdesc, page, dma_addr);
		sdesc++;

		fl->avail++;
		if (++fl->pidx == fl->size) {
			fl->pidx = 0;
			sdesc = fl->sdesc;
			d = fl->desc;
		}
	}

out:
	/*
	 * Update our accounting state to incorporate the new Free List
	 * buffers, tell the hardware about them and return the number of
	 * buffers which we were able to allocate.
	 */
	cred = fl->avail - cred;
	fl->pend_cred += cred;
	FUNC10(adapter, fl);

	if (FUNC14(FUNC7(adapter, fl))) {
		FUNC13();
		FUNC11(fl->cntxt_id, adapter->sge.starving_fl);
	}

	return cred;
}