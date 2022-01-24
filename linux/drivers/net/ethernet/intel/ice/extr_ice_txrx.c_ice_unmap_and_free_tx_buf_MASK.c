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
struct ice_tx_buf {int /*<<< orphan*/ * skb; int /*<<< orphan*/ * next_to_watch; } ;
struct ice_ring {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC1 (struct ice_tx_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ice_tx_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_tx_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 

__attribute__((used)) static void
FUNC6(struct ice_ring *ring, struct ice_tx_buf *tx_buf)
{
	if (tx_buf->skb) {
		FUNC0(tx_buf->skb);
		if (FUNC2(tx_buf, len))
			FUNC5(ring->dev,
					 FUNC1(tx_buf, dma),
					 FUNC2(tx_buf, len),
					 DMA_TO_DEVICE);
	} else if (FUNC2(tx_buf, len)) {
		FUNC4(ring->dev,
			       FUNC1(tx_buf, dma),
			       FUNC2(tx_buf, len),
			       DMA_TO_DEVICE);
	}

	tx_buf->next_to_watch = NULL;
	tx_buf->skb = NULL;
	FUNC3(tx_buf, len, 0);
	/* tx_buf must be completely set up in the transmit path */
}