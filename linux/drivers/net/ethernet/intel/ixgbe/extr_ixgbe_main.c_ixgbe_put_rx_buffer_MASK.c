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
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {scalar_t__ dma; int /*<<< orphan*/ * skb; int /*<<< orphan*/ * page; int /*<<< orphan*/  pagecnt_bias; } ;
struct ixgbe_ring {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ dma; int page_released; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IXGBE_RX_DMA_ATTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ixgbe_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_ring*,struct ixgbe_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_ring*) ; 

__attribute__((used)) static void FUNC7(struct ixgbe_ring *rx_ring,
				struct ixgbe_rx_buffer *rx_buffer,
				struct sk_buff *skb)
{
	if (FUNC4(rx_buffer)) {
		/* hand second half of page back to the ring */
		FUNC5(rx_ring, rx_buffer);
	} else {
		if (!FUNC0(skb) && FUNC1(skb)->dma == rx_buffer->dma) {
			/* the page has been released from the ring */
			FUNC1(skb)->page_released = true;
		} else {
			/* we are not reusing the buffer so unmap it */
			FUNC3(rx_ring->dev, rx_buffer->dma,
					     FUNC6(rx_ring),
					     DMA_FROM_DEVICE,
					     IXGBE_RX_DMA_ATTR);
		}
		FUNC2(rx_buffer->page,
					rx_buffer->pagecnt_bias);
	}

	/* clear contents of rx_buffer */
	rx_buffer->page = NULL;
	rx_buffer->skb = NULL;
}