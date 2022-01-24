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
struct bgmac_dma_ring {int /*<<< orphan*/ * slots; scalar_t__ end; scalar_t__ start; scalar_t__ unaligned; int /*<<< orphan*/  dma_base; scalar_t__ mmio_base; } ;
struct bgmac {struct bgmac_dma_ring* rx_ring; struct bgmac_dma_ring* tx_ring; } ;

/* Variables and functions */
 scalar_t__ BGMAC_DMA_RX_RINGHI ; 
 scalar_t__ BGMAC_DMA_RX_RINGLO ; 
 scalar_t__ BGMAC_DMA_TX_RINGHI ; 
 scalar_t__ BGMAC_DMA_TX_RINGLO ; 
 int BGMAC_MAX_RX_RINGS ; 
 int BGMAC_MAX_TX_RINGS ; 
 int BGMAC_RX_RING_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,struct bgmac_dma_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*,struct bgmac_dma_ring*,int) ; 
 int FUNC3 (struct bgmac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bgmac*,struct bgmac_dma_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct bgmac*,struct bgmac_dma_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct bgmac*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct bgmac *bgmac)
{
	struct bgmac_dma_ring *ring;
	int i, err;

	for (i = 0; i < BGMAC_MAX_TX_RINGS; i++) {
		ring = &bgmac->tx_ring[i];

		if (!ring->unaligned)
			FUNC5(bgmac, ring);
		FUNC6(bgmac, ring->mmio_base + BGMAC_DMA_TX_RINGLO,
			    FUNC7(ring->dma_base));
		FUNC6(bgmac, ring->mmio_base + BGMAC_DMA_TX_RINGHI,
			    FUNC8(ring->dma_base));
		if (ring->unaligned)
			FUNC5(bgmac, ring);

		ring->start = 0;
		ring->end = 0;	/* Points the slot that should *not* be read */
	}

	for (i = 0; i < BGMAC_MAX_RX_RINGS; i++) {
		int j;

		ring = &bgmac->rx_ring[i];

		if (!ring->unaligned)
			FUNC1(bgmac, ring);
		FUNC6(bgmac, ring->mmio_base + BGMAC_DMA_RX_RINGLO,
			    FUNC7(ring->dma_base));
		FUNC6(bgmac, ring->mmio_base + BGMAC_DMA_RX_RINGHI,
			    FUNC8(ring->dma_base));
		if (ring->unaligned)
			FUNC1(bgmac, ring);

		ring->start = 0;
		ring->end = 0;
		for (j = 0; j < BGMAC_RX_RING_SLOTS; j++) {
			err = FUNC3(bgmac, &ring->slots[j]);
			if (err)
				goto error;

			FUNC2(bgmac, ring, j);
		}

		FUNC4(bgmac, ring);
	}

	return 0;

error:
	FUNC0(bgmac);
	return err;
}