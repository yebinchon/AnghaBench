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
struct tmio_mmc_host {int /*<<< orphan*/ * bounce_buf; struct dma_chan* chan_rx; struct dma_chan* chan_tx; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tmio_mmc_host *host)
{
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
	if (host->bounce_buf) {
		FUNC1((unsigned long)host->bounce_buf, 0);
		host->bounce_buf = NULL;
	}
}