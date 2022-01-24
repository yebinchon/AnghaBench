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
struct ice_ring {size_t count; int size; int /*<<< orphan*/  netdev; scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ice_ring*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_ring*) ; 

void FUNC4(struct ice_ring *tx_ring)
{
	u16 i;

	/* ring already cleared, nothing to do */
	if (!tx_ring->tx_buf)
		return;

	/* Free all the Tx ring sk_buffs */
	for (i = 0; i < tx_ring->count; i++)
		FUNC0(tx_ring, &tx_ring->tx_buf[i]);

	FUNC1(tx_ring->tx_buf, 0, sizeof(*tx_ring->tx_buf) * tx_ring->count);

	/* Zero out the descriptor ring */
	FUNC1(tx_ring->desc, 0, tx_ring->size);

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;

	if (!tx_ring->netdev)
		return;

	/* cleanup Tx queue statistics */
	FUNC2(FUNC3(tx_ring));
}