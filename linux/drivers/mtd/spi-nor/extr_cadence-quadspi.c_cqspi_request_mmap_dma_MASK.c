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
struct cqspi_st {int /*<<< orphan*/  rx_dma_complete; int /*<<< orphan*/ * rx_chan; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cqspi_st *cqspi)
{
	dma_cap_mask_t mask;

	FUNC3(mask);
	FUNC2(DMA_MEMCPY, mask);

	cqspi->rx_chan = FUNC4(&mask);
	if (FUNC0(cqspi->rx_chan)) {
		FUNC1(&cqspi->pdev->dev, "No Rx DMA available\n");
		cqspi->rx_chan = NULL;
	}
	FUNC5(&cqspi->rx_dma_complete);
}