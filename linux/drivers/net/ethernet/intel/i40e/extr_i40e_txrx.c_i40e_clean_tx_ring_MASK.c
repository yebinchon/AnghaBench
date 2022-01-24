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
typedef  size_t u16 ;
struct i40e_tx_buffer {int dummy; } ;
struct i40e_ring {size_t count; unsigned long size; int /*<<< orphan*/  netdev; scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * tx_bi; scalar_t__ xsk_umem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40e_ring*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_ring*) ; 

void FUNC6(struct i40e_ring *tx_ring)
{
	unsigned long bi_size;
	u16 i;

	if (FUNC4(tx_ring) && tx_ring->xsk_umem) {
		FUNC1(tx_ring);
	} else {
		/* ring already cleared, nothing to do */
		if (!tx_ring->tx_bi)
			return;

		/* Free all the Tx ring sk_buffs */
		for (i = 0; i < tx_ring->count; i++)
			FUNC0(tx_ring,
							&tx_ring->tx_bi[i]);
	}

	bi_size = sizeof(struct i40e_tx_buffer) * tx_ring->count;
	FUNC2(tx_ring->tx_bi, 0, bi_size);

	/* Zero out the descriptor ring */
	FUNC2(tx_ring->desc, 0, tx_ring->size);

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;

	if (!tx_ring->netdev)
		return;

	/* cleanup Tx queue statistics */
	FUNC3(FUNC5(tx_ring));
}