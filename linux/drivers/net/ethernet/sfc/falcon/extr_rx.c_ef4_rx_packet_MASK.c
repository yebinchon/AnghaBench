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
typedef  int u16 ;
struct ef4_rx_queue {unsigned int ptr_mask; int /*<<< orphan*/  rx_packets; struct ef4_nic* efx; } ;
struct ef4_rx_buffer {int flags; unsigned int len; int /*<<< orphan*/  page_offset; } ;
struct ef4_nic {unsigned int rx_dma_len; scalar_t__ rx_prefix_size; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  rx_scatter; } ;
struct ef4_channel {unsigned int rx_pkt_n_frags; unsigned int rx_pkt_index; } ;

/* Variables and functions */
 unsigned int EF4_RX_MAX_FRAGS ; 
 int EF4_RX_PKT_CSUMMED ; 
 int EF4_RX_PKT_DISCARD ; 
 int EF4_RX_PKT_PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_channel*,struct ef4_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_channel*,struct ef4_rx_buffer*,unsigned int) ; 
 struct ef4_rx_buffer* FUNC3 (struct ef4_rx_queue*,struct ef4_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_rx_buffer*) ; 
 struct ef4_rx_buffer* FUNC5 (struct ef4_rx_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_rx_queue*,struct ef4_rx_buffer*,unsigned int) ; 
 struct ef4_channel* FUNC8 (struct ef4_rx_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_rx_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*,struct ef4_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_status ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(struct ef4_rx_queue *rx_queue, unsigned int index,
		   unsigned int n_frags, unsigned int len, u16 flags)
{
	struct ef4_nic *efx = rx_queue->efx;
	struct ef4_channel *channel = FUNC8(rx_queue);
	struct ef4_rx_buffer *rx_buf;

	rx_queue->rx_packets++;

	rx_buf = FUNC5(rx_queue, index);
	rx_buf->flags |= flags;

	/* Validate the number of fragments and completed length */
	if (n_frags == 1) {
		if (!(flags & EF4_RX_PKT_PREFIX_LEN))
			FUNC7(rx_queue, rx_buf, len);
	} else if (FUNC13(n_frags > EF4_RX_MAX_FRAGS) ||
		   FUNC13(len <= (n_frags - 1) * efx->rx_dma_len) ||
		   FUNC13(len > n_frags * efx->rx_dma_len) ||
		   FUNC13(!efx->rx_scatter)) {
		/* If this isn't an explicit discard request, either
		 * the hardware or the driver is broken.
		 */
		FUNC0(!(len == 0 && rx_buf->flags & EF4_RX_PKT_DISCARD));
		rx_buf->flags |= EF4_RX_PKT_DISCARD;
	}

	FUNC11(efx, rx_status, efx->net_dev,
		   "RX queue %d received ids %x-%x len %d %s%s\n",
		   FUNC9(rx_queue), index,
		   (index + n_frags - 1) & rx_queue->ptr_mask, len,
		   (rx_buf->flags & EF4_RX_PKT_CSUMMED) ? " [SUMMED]" : "",
		   (rx_buf->flags & EF4_RX_PKT_DISCARD) ? " [DISCARD]" : "");

	/* Discard packet, if instructed to do so.  Process the
	 * previous receive first.
	 */
	if (FUNC13(rx_buf->flags & EF4_RX_PKT_DISCARD)) {
		FUNC6(channel);
		FUNC1(channel, rx_buf, n_frags);
		return;
	}

	if (n_frags == 1 && !(flags & EF4_RX_PKT_PREFIX_LEN))
		rx_buf->len = len;

	/* Release and/or sync the DMA mapping - assumes all RX buffers
	 * consumed in-order per RX queue.
	 */
	FUNC10(efx, rx_buf, rx_buf->len);

	/* Prefetch nice and early so data will (hopefully) be in cache by
	 * the time we look at it.
	 */
	FUNC12(FUNC4(rx_buf));

	rx_buf->page_offset += efx->rx_prefix_size;
	rx_buf->len -= efx->rx_prefix_size;

	if (n_frags > 1) {
		/* Release/sync DMA mapping for additional fragments.
		 * Fix length for last fragment.
		 */
		unsigned int tail_frags = n_frags - 1;

		for (;;) {
			rx_buf = FUNC3(rx_queue, rx_buf);
			if (--tail_frags == 0)
				break;
			FUNC10(efx, rx_buf, efx->rx_dma_len);
		}
		rx_buf->len = len - (n_frags - 1) * efx->rx_dma_len;
		FUNC10(efx, rx_buf, rx_buf->len);
	}

	/* All fragments have been DMA-synced, so recycle pages. */
	rx_buf = FUNC5(rx_queue, index);
	FUNC2(channel, rx_buf, n_frags);

	/* Pipeline receives so that we give time for packet headers to be
	 * prefetched into cache.
	 */
	FUNC6(channel);
	channel->rx_pkt_n_frags = n_frags;
	channel->rx_pkt_index = index;
}