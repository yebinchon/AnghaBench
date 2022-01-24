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
struct iavf_ring {int /*<<< orphan*/ * desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  size; int /*<<< orphan*/  dev; int /*<<< orphan*/ * rx_bi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iavf_ring *rx_ring)
{
	FUNC1(rx_ring);
	FUNC2(rx_ring->rx_bi);
	rx_ring->rx_bi = NULL;

	if (rx_ring->desc) {
		FUNC0(rx_ring->dev, rx_ring->size,
				  rx_ring->desc, rx_ring->dma);
		rx_ring->desc = NULL;
	}
}