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
struct wbsd_host {int dma; scalar_t__ dma_addr; int /*<<< orphan*/ * dma_buffer; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  WBSD_DMA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wbsd_host *host)
{
	/*
	 * host->dma_addr is valid here iff host->dma_buffer is not NULL.
	 */
	if (host->dma_buffer) {
		FUNC0(FUNC3(host->mmc), host->dma_addr,
			WBSD_DMA_SIZE, DMA_BIDIRECTIONAL);
		FUNC2(host->dma_buffer);
	}
	if (host->dma >= 0)
		FUNC1(host->dma);

	host->dma = -1;
	host->dma_buffer = NULL;
	host->dma_addr = 0;
}