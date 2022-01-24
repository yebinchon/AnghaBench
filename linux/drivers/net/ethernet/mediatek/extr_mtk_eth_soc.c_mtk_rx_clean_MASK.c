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
struct mtk_rx_ring {int dma_size; TYPE_1__* dma; int /*<<< orphan*/  phys; int /*<<< orphan*/ * data; int /*<<< orphan*/  buf_size; } ;
struct mtk_eth {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rxd1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtk_eth *eth, struct mtk_rx_ring *ring)
{
	int i;

	if (ring->data && ring->dma) {
		for (i = 0; i < ring->dma_size; i++) {
			if (!ring->data[i])
				continue;
			if (!ring->dma[i].rxd1)
				continue;
			FUNC1(eth->dev,
					 ring->dma[i].rxd1,
					 ring->buf_size,
					 DMA_FROM_DEVICE);
			FUNC3(ring->data[i]);
		}
		FUNC2(ring->data);
		ring->data = NULL;
	}

	if (ring->dma) {
		FUNC0(eth->dev,
				  ring->dma_size * sizeof(*ring->dma),
				  ring->dma,
				  ring->phys);
		ring->dma = NULL;
	}
}