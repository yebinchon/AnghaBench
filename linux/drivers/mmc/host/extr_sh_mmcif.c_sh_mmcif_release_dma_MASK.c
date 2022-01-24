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
struct sh_mmcif_host {int dma_active; struct dma_chan* chan_rx; struct dma_chan* chan_tx; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int BUF_ACC_DMAREN ; 
 int BUF_ACC_DMAWEN ; 
 int /*<<< orphan*/  MMCIF_CE_BUF_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mmcif_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sh_mmcif_host *host)
{
	FUNC1(host, MMCIF_CE_BUF_ACC, BUF_ACC_DMAREN | BUF_ACC_DMAWEN);
	/* Descriptors are freed automatically */
	if (host->chan_tx) {
		struct dma_chan *chan = host->chan_tx;
		host->chan_tx = NULL;
		FUNC0(chan);
	}
	if (host->chan_rx) {
		struct dma_chan *chan = host->chan_rx;
		host->chan_rx = NULL;
		FUNC0(chan);
	}

	host->dma_active = false;
}