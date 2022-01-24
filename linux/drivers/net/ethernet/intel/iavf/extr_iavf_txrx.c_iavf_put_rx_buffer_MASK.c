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
struct iavf_rx_buffer {int /*<<< orphan*/ * page; int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  page_reuse_count; } ;
struct iavf_ring {int /*<<< orphan*/  dev; TYPE_1__ rx_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IAVF_RX_DMA_ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iavf_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_ring*,struct iavf_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct iavf_ring*) ; 

__attribute__((used)) static void FUNC5(struct iavf_ring *rx_ring,
			       struct iavf_rx_buffer *rx_buffer)
{
	if (!rx_buffer)
		return;

	if (FUNC2(rx_buffer)) {
		/* hand second half of page back to the ring */
		FUNC3(rx_ring, rx_buffer);
		rx_ring->rx_stats.page_reuse_count++;
	} else {
		/* we are not reusing the buffer so unmap it */
		FUNC1(rx_ring->dev, rx_buffer->dma,
				     FUNC4(rx_ring),
				     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
		FUNC0(rx_buffer->page,
					rx_buffer->pagecnt_bias);
	}

	/* clear contents of buffer_info */
	rx_buffer->page = NULL;
}