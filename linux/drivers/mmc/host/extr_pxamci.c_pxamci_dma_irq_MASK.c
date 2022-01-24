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
struct pxamci_host {int /*<<< orphan*/  lock; TYPE_1__* data; int /*<<< orphan*/  mmc; scalar_t__ base; int /*<<< orphan*/  dma_cookie; struct dma_chan* dma_chan_tx; struct dma_chan* dma_chan_rx; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_PART_FULL ; 
 int DMA_COMPLETE ; 
 int /*<<< orphan*/  EIO ; 
 int MMC_DATA_READ ; 
 scalar_t__ MMC_PRTBUF ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxamci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(void *param)
{
	struct pxamci_host *host = param;
	struct dma_tx_state state;
	enum dma_status status;
	struct dma_chan *chan;
	unsigned long flags;

	FUNC5(&host->lock, flags);

	if (!host->data)
		goto out_unlock;

	if (host->data->flags & MMC_DATA_READ)
		chan = host->dma_chan_rx;
	else
		chan = host->dma_chan_tx;

	status = FUNC0(chan, host->dma_cookie, &state);

	if (FUNC1(status == DMA_COMPLETE)) {
		FUNC7(BUF_PART_FULL, host->base + MMC_PRTBUF);
	} else {
		FUNC3("%s: DMA error on %s channel\n", FUNC2(host->mmc),
			host->data->flags & MMC_DATA_READ ? "rx" : "tx");
		host->data->error = -EIO;
		FUNC4(host, 0);
	}

out_unlock:
	FUNC6(&host->lock, flags);
}