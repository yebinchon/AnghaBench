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
struct mmc_omap_host {int brs_received; int /*<<< orphan*/  dma_lock; scalar_t__ dma_done; int /*<<< orphan*/  dma_in_use; } ;
struct mmc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_omap_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct mmc_omap_host *host, struct mmc_data *data)
{
	unsigned long flags;
	int done;

	if (!host->dma_in_use) {
		FUNC0(host, data);
		return;
	}
	done = 0;
	FUNC1(&host->dma_lock, flags);
	if (host->dma_done)
		done = 1;
	else
		host->brs_received = 1;
	FUNC2(&host->dma_lock, flags);
	if (done)
		FUNC0(host, data);
}