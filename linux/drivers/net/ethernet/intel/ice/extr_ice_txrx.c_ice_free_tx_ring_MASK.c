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
struct ice_ring {int /*<<< orphan*/ * desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  size; int /*<<< orphan*/  dev; int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_ring*) ; 

void FUNC3(struct ice_ring *tx_ring)
{
	FUNC2(tx_ring);
	FUNC0(tx_ring->dev, tx_ring->tx_buf);
	tx_ring->tx_buf = NULL;

	if (tx_ring->desc) {
		FUNC1(tx_ring->dev, tx_ring->size,
				   tx_ring->desc, tx_ring->dma);
		tx_ring->desc = NULL;
	}
}