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
struct i40e_rx_buffer {scalar_t__ pagecnt_bias; int /*<<< orphan*/  page_offset; struct page* page; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  alloc_page_failed; int /*<<< orphan*/  page_reuse_count; } ;
struct i40e_ring {TYPE_1__ rx_stats; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  I40E_RX_DMA_ATTR ; 
 scalar_t__ USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_ring*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static bool FUNC10(struct i40e_ring *rx_ring,
				   struct i40e_rx_buffer *bi)
{
	struct page *page = bi->page;
	dma_addr_t dma;

	/* since we are recycling buffers we should seldom need to alloc */
	if (FUNC7(page)) {
		rx_ring->rx_stats.page_reuse_count++;
		return true;
	}

	/* alloc new page for storage */
	page = FUNC1(FUNC5(rx_ring));
	if (FUNC9(!page)) {
		rx_ring->rx_stats.alloc_page_failed++;
		return false;
	}

	/* map page for use */
	dma = FUNC2(rx_ring->dev, page, 0,
				 FUNC6(rx_ring),
				 DMA_FROM_DEVICE,
				 I40E_RX_DMA_ATTR);

	/* if mapping failed free memory back to system since
	 * there isn't much point in holding memory we can't use
	 */
	if (FUNC3(rx_ring->dev, dma)) {
		FUNC0(page, FUNC5(rx_ring));
		rx_ring->rx_stats.alloc_page_failed++;
		return false;
	}

	bi->dma = dma;
	bi->page = page;
	bi->page_offset = FUNC4(rx_ring);
	FUNC8(page, USHRT_MAX - 1);
	bi->pagecnt_bias = USHRT_MAX;

	return true;
}