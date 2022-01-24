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
struct igc_rx_buffer {int pagecnt_bias; int /*<<< orphan*/  page_offset; struct page* page; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  alloc_failed; } ;
struct igc_ring {TYPE_1__ rx_stats; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IGC_RX_DMA_ATTR ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct igc_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct igc_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct igc_ring*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static bool FUNC9(struct igc_ring *rx_ring,
				  struct igc_rx_buffer *bi)
{
	struct page *page = bi->page;
	dma_addr_t dma;

	/* since we are recycling buffers we should seldom need to alloc */
	if (FUNC7(page))
		return true;

	/* alloc new page for storage */
	page = FUNC1(FUNC5(rx_ring));
	if (FUNC8(!page)) {
		rx_ring->rx_stats.alloc_failed++;
		return false;
	}

	/* map page for use */
	dma = FUNC2(rx_ring->dev, page, 0,
				 FUNC6(rx_ring),
				 DMA_FROM_DEVICE,
				 IGC_RX_DMA_ATTR);

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
	bi->page_offset = FUNC4(rx_ring);
	bi->pagecnt_bias = 1;

	return true;
}