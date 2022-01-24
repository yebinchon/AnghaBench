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
struct omap_hsmmc_host {int dma_ch; int /*<<< orphan*/  mmc; int /*<<< orphan*/ * mrq; scalar_t__ use_dma; int /*<<< orphan*/  irq_lock; scalar_t__ req_in_progress; } ;
struct mmc_request {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct omap_hsmmc_host *host, struct mmc_request *mrq)
{
	int dma_ch;
	unsigned long flags;

	FUNC2(&host->irq_lock, flags);
	host->req_in_progress = 0;
	dma_ch = host->dma_ch;
	FUNC3(&host->irq_lock, flags);

	FUNC1(host);
	/* Do not complete the request if DMA is still in progress */
	if (mrq->data && host->use_dma && dma_ch != -1)
		return;
	host->mrq = NULL;
	FUNC0(host->mmc, mrq);
}