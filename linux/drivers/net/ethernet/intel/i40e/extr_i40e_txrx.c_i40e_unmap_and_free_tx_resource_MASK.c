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
struct i40e_tx_buffer {int tx_flags; int /*<<< orphan*/ * skb; int /*<<< orphan*/ * next_to_watch; int /*<<< orphan*/  xdpf; int /*<<< orphan*/  raw_buf; } ;
struct i40e_ring {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int I40E_TX_FLAGS_FD_SB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_tx_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i40e_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_tx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 scalar_t__ FUNC7 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct i40e_ring *ring,
					    struct i40e_tx_buffer *tx_buffer)
{
	if (tx_buffer->skb) {
		if (tx_buffer->tx_flags & I40E_TX_FLAGS_FD_SB)
			FUNC6(tx_buffer->raw_buf);
		else if (FUNC7(ring))
			FUNC8(tx_buffer->xdpf);
		else
			FUNC0(tx_buffer->skb);
		if (FUNC2(tx_buffer, len))
			FUNC5(ring->dev,
					 FUNC1(tx_buffer, dma),
					 FUNC2(tx_buffer, len),
					 DMA_TO_DEVICE);
	} else if (FUNC2(tx_buffer, len)) {
		FUNC4(ring->dev,
			       FUNC1(tx_buffer, dma),
			       FUNC2(tx_buffer, len),
			       DMA_TO_DEVICE);
	}

	tx_buffer->next_to_watch = NULL;
	tx_buffer->skb = NULL;
	FUNC3(tx_buffer, len, 0);
	/* tx_buffer must be completely set up in the transmit path */
}