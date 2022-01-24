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
struct sk_buff {scalar_t__ data; } ;
struct ixgbe_ring {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_4__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  page_released; } ;
struct TYPE_3__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IXGBE_RX_DMA_ATTR ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_ring*) ; 
 scalar_t__ FUNC4 (struct ixgbe_ring*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ixgbe_ring *rx_ring,
				struct sk_buff *skb)
{
	if (FUNC4(rx_ring)) {
		unsigned long offset = (unsigned long)(skb->data) & ~PAGE_MASK;

		FUNC1(rx_ring->dev,
					      FUNC0(skb)->dma,
					      offset,
					      FUNC7(skb),
					      DMA_FROM_DEVICE);
	} else {
		skb_frag_t *frag = &FUNC8(skb)->frags[0];

		FUNC1(rx_ring->dev,
					      FUNC0(skb)->dma,
					      FUNC5(frag),
					      FUNC6(frag),
					      DMA_FROM_DEVICE);
	}

	/* If the page was released, just unmap it. */
	if (FUNC9(FUNC0(skb)->page_released)) {
		FUNC2(rx_ring->dev, FUNC0(skb)->dma,
				     FUNC3(rx_ring),
				     DMA_FROM_DEVICE,
				     IXGBE_RX_DMA_ATTR);
	}
}