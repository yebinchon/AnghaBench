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
struct b43legacy_dma {int /*<<< orphan*/ * tx_ring0; int /*<<< orphan*/ * tx_ring1; int /*<<< orphan*/ * tx_ring2; int /*<<< orphan*/ * tx_ring3; int /*<<< orphan*/ * tx_ring4; int /*<<< orphan*/ * tx_ring5; int /*<<< orphan*/ * rx_ring0; int /*<<< orphan*/ * rx_ring3; } ;
struct b43legacy_wldev {struct b43legacy_dma dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct b43legacy_wldev*) ; 

void FUNC2(struct b43legacy_wldev *dev)
{
	struct b43legacy_dma *dma;

	if (FUNC1(dev))
		return;
	dma = &dev->dma;

	FUNC0(dma->rx_ring3);
	dma->rx_ring3 = NULL;
	FUNC0(dma->rx_ring0);
	dma->rx_ring0 = NULL;

	FUNC0(dma->tx_ring5);
	dma->tx_ring5 = NULL;
	FUNC0(dma->tx_ring4);
	dma->tx_ring4 = NULL;
	FUNC0(dma->tx_ring3);
	dma->tx_ring3 = NULL;
	FUNC0(dma->tx_ring2);
	dma->tx_ring2 = NULL;
	FUNC0(dma->tx_ring1);
	dma->tx_ring1 = NULL;
	FUNC0(dma->tx_ring0);
	dma->tx_ring0 = NULL;
}