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
struct jz4740_mmc_host {void* dma_rx; void* dma_tx; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct jz4740_mmc_host *host)
{
	host->dma_tx = FUNC4(FUNC5(host->mmc), "tx");
	if (FUNC0(host->dma_tx)) {
		FUNC2(FUNC5(host->mmc), "Failed to get dma_tx channel\n");
		return FUNC1(host->dma_tx);
	}

	host->dma_rx = FUNC4(FUNC5(host->mmc), "rx");
	if (FUNC0(host->dma_rx)) {
		FUNC2(FUNC5(host->mmc), "Failed to get dma_rx channel\n");
		FUNC3(host->dma_tx);
		return FUNC1(host->dma_rx);
	}

	return 0;
}