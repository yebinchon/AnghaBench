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
struct sk_buff {int dummy; } ;
struct ixgbevf_rx_buffer {int /*<<< orphan*/ * page; int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  dma; } ;
struct ixgbevf_ring {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IXGBEVF_RX_DMA_ATTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ixgbevf_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbevf_ring*) ; 

__attribute__((used)) static void FUNC6(struct ixgbevf_ring *rx_ring,
				  struct ixgbevf_rx_buffer *rx_buffer,
				  struct sk_buff *skb)
{
	if (FUNC3(rx_buffer)) {
		/* hand second half of page back to the ring */
		FUNC4(rx_ring, rx_buffer);
	} else {
		if (FUNC0(skb))
			/* We are not reusing the buffer so unmap it and free
			 * any references we are holding to it
			 */
			FUNC2(rx_ring->dev, rx_buffer->dma,
					     FUNC5(rx_ring),
					     DMA_FROM_DEVICE,
					     IXGBEVF_RX_DMA_ATTR);
		FUNC1(rx_buffer->page,
					rx_buffer->pagecnt_bias);
	}

	/* clear contents of rx_buffer */
	rx_buffer->page = NULL;
}