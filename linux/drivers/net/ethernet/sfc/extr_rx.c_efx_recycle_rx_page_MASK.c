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
struct page {int dummy; } ;
struct efx_rx_queue {unsigned int page_add; unsigned int page_ptr_mask; unsigned int page_remove; int /*<<< orphan*/  page_recycle_full; struct page** page_ring; struct efx_nic* efx; } ;
struct efx_rx_buffer {int flags; struct page* page; } ;
struct efx_nic {int dummy; } ;
struct efx_channel {int dummy; } ;

/* Variables and functions */
 int EFX_RX_BUF_LAST_IN_PAGE ; 
 struct efx_rx_queue* FUNC0 (struct efx_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,struct efx_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static void FUNC3(struct efx_channel *channel,
				struct efx_rx_buffer *rx_buf)
{
	struct page *page = rx_buf->page;
	struct efx_rx_queue *rx_queue = FUNC0(channel);
	struct efx_nic *efx = rx_queue->efx;
	unsigned index;

	/* Only recycle the page after processing the final buffer. */
	if (!(rx_buf->flags & EFX_RX_BUF_LAST_IN_PAGE))
		return;

	index = rx_queue->page_add & rx_queue->page_ptr_mask;
	if (rx_queue->page_ring[index] == NULL) {
		unsigned read_index = rx_queue->page_remove &
			rx_queue->page_ptr_mask;

		/* The next slot in the recycle ring is available, but
		 * increment page_remove if the read pointer currently
		 * points here.
		 */
		if (read_index == index)
			++rx_queue->page_remove;
		rx_queue->page_ring[index] = page;
		++rx_queue->page_add;
		return;
	}
	++rx_queue->page_recycle_full;
	FUNC1(efx, rx_buf);
	FUNC2(rx_buf->page);
}