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
struct mmc_host {int dummy; } ;
struct bcm2835_host {int /*<<< orphan*/ * dma_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bcm2835_host* FUNC2 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc)
{
	struct bcm2835_host *host = FUNC2(mmc);

	if (host->dma_chan)
		FUNC1(host->dma_chan);
	host->dma_chan = NULL;
	FUNC0(host);
}