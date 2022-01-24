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
struct mmc_request {int dummy; } ;
struct dma_chan {int dummy; } ;
struct bcm2835_host {TYPE_1__* pdev; struct dma_chan* dma_chan; int /*<<< orphan*/ * dma_desc; int /*<<< orphan*/ * data; int /*<<< orphan*/ * cmd; struct mmc_request* mrq; int /*<<< orphan*/  timeout_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmc_request*) ; 

__attribute__((used)) static void FUNC5(struct bcm2835_host *host)
{
	struct dma_chan *terminate_chan = NULL;
	struct mmc_request *mrq;

	FUNC0(&host->timeout_work);

	mrq = host->mrq;

	host->mrq = NULL;
	host->cmd = NULL;
	host->data = NULL;

	host->dma_desc = NULL;
	terminate_chan = host->dma_chan;
	host->dma_chan = NULL;

	if (terminate_chan) {
		int err = FUNC2(terminate_chan);

		if (err)
			FUNC1(&host->pdev->dev,
				"failed to terminate DMA (%d)\n", err);
	}

	FUNC4(FUNC3(host), mrq);
}