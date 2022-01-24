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
struct page {int dummy; } ;
struct myri10ge_rx_buf {int watchdog_needed; int fill_cnt; int cnt; int mask; int page_offset; TYPE_1__* shadow; int /*<<< orphan*/ * lanai; int /*<<< orphan*/  bus; TYPE_2__* info; struct page* page; } ;
struct myri10ge_priv {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int page_offset; struct page* page; } ;
struct TYPE_3__ {void* addr_high; void* addr_low; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  MYRI10GE_ALLOC_ORDER ; 
 int MYRI10GE_ALLOC_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ FUNC2 (int) ; 
 int __GFP_COMP ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(struct myri10ge_priv *mgp, struct myri10ge_rx_buf *rx,
			int bytes, int watchdog)
{
	struct page *page;
	dma_addr_t bus;
	int idx;
#if MYRI10GE_ALLOC_SIZE > 4096
	int end_offset;
#endif

	if (FUNC11(rx->watchdog_needed && !watchdog))
		return;

	/* try to refill entire ring */
	while (rx->fill_cnt != (rx->cnt + rx->mask + 1)) {
		idx = rx->fill_cnt & rx->mask;
		if (rx->page_offset + bytes <= MYRI10GE_ALLOC_SIZE) {
			/* we can use part of previous page */
			FUNC6(rx->page);
		} else {
			/* we need a new page */
			page =
			    FUNC4(GFP_ATOMIC | __GFP_COMP,
					MYRI10GE_ALLOC_ORDER);
			if (FUNC11(page == NULL)) {
				if (rx->fill_cnt - rx->cnt < 16)
					rx->watchdog_needed = 1;
				return;
			}

			bus = FUNC10(mgp->pdev, page, 0,
					   MYRI10GE_ALLOC_SIZE,
					   PCI_DMA_FROMDEVICE);
			if (FUNC11(FUNC9(mgp->pdev, bus))) {
				FUNC3(page, MYRI10GE_ALLOC_ORDER);
				if (rx->fill_cnt - rx->cnt < 16)
					rx->watchdog_needed = 1;
				return;
			}

			rx->page = page;
			rx->page_offset = 0;
			rx->bus = bus;

		}
		rx->info[idx].page = rx->page;
		rx->info[idx].page_offset = rx->page_offset;
		/* note that this is the address of the start of the
		 * page */
		FUNC5(&rx->info[idx], bus, rx->bus);
		rx->shadow[idx].addr_low =
		    FUNC7(FUNC1(rx->bus) + rx->page_offset);
		rx->shadow[idx].addr_high =
		    FUNC7(FUNC0(rx->bus));

		/* start next packet on a cacheline boundary */
		rx->page_offset += FUNC2(bytes);

#if MYRI10GE_ALLOC_SIZE > 4096
		/* don't cross a 4KB boundary */
		end_offset = rx->page_offset + bytes - 1;
		if ((unsigned)(rx->page_offset ^ end_offset) > 4095)
			rx->page_offset = end_offset & ~4095;
#endif
		rx->fill_cnt++;

		/* copy 8 descriptors to the firmware at a time */
		if ((idx & 7) == 7) {
			FUNC8(&rx->lanai[idx - 7],
					    &rx->shadow[idx - 7]);
		}
	}
}