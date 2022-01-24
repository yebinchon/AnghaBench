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
struct enetc_rx_swbd {int /*<<< orphan*/ * page; int /*<<< orphan*/  dma; int /*<<< orphan*/  page_offset; } ;
struct enetc_bdr {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ENETC_RXB_DMA_SIZE ; 
 int /*<<< orphan*/  ENETC_RXB_TRUESIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct enetc_bdr*,struct enetc_rx_swbd*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct enetc_bdr *rx_ring,
			      struct enetc_rx_swbd *rx_swbd)
{
	if (FUNC4(FUNC2(rx_swbd->page))) {
		rx_swbd->page_offset ^= ENETC_RXB_TRUESIZE;
		FUNC5(rx_swbd->page);

		FUNC3(rx_ring, rx_swbd);

		/* sync for use by the device */
		FUNC0(rx_ring->dev, rx_swbd->dma,
						 rx_swbd->page_offset,
						 ENETC_RXB_DMA_SIZE,
						 DMA_FROM_DEVICE);
	} else {
		FUNC1(rx_ring->dev, rx_swbd->dma,
			       PAGE_SIZE, DMA_FROM_DEVICE);
	}

	rx_swbd->page = NULL;
}