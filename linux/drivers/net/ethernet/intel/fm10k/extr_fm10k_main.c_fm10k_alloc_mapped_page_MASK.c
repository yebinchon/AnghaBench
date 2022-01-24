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
struct page {int dummy; } ;
struct fm10k_rx_buffer {scalar_t__ page_offset; struct page* page; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  alloc_failed; } ;
struct fm10k_ring {TYPE_1__ rx_stats; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct fm10k_ring *rx_ring,
				    struct fm10k_rx_buffer *bi)
{
	struct page *page = bi->page;
	dma_addr_t dma;

	/* Only page will be NULL if buffer was consumed */
	if (FUNC4(page))
		return true;

	/* alloc new page for storage */
	page = FUNC1();
	if (FUNC5(!page)) {
		rx_ring->rx_stats.alloc_failed++;
		return false;
	}

	/* map page for use */
	dma = FUNC2(rx_ring->dev, page, 0, PAGE_SIZE, DMA_FROM_DEVICE);

	/* if mapping failed free memory back to system since
	 * there isn't much point in holding memory we can't use
	 */
	if (FUNC3(rx_ring->dev, dma)) {
		FUNC0(page);

		rx_ring->rx_stats.alloc_failed++;
		return false;
	}

	bi->dma = dma;
	bi->page = page;
	bi->page_offset = 0;

	return true;
}