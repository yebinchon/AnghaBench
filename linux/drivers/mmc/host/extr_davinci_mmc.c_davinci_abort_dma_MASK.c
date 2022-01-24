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
struct mmc_davinci_host {scalar_t__ data_dir; struct dma_chan* dma_tx; struct dma_chan* dma_rx; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ DAVINCI_MMC_DATADIR_READ ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC1(struct mmc_davinci_host *host)
{
	struct dma_chan *sync_dev;

	if (host->data_dir == DAVINCI_MMC_DATADIR_READ)
		sync_dev = host->dma_rx;
	else
		sync_dev = host->dma_tx;

	FUNC0(sync_dev);
}