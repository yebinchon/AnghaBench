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
struct omap_hsmmc_host {int dma_ch; int req_in_progress; int /*<<< orphan*/  mmc; struct mmc_request* mrq; int /*<<< orphan*/  irq_lock; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; int /*<<< orphan*/  host_cookie; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 struct dma_chan* FUNC3 (struct omap_hsmmc_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *param)
{
	struct omap_hsmmc_host *host = param;
	struct dma_chan *chan;
	struct mmc_data *data;
	int req_in_progress;

	FUNC4(&host->irq_lock);
	if (host->dma_ch < 0) {
		FUNC5(&host->irq_lock);
		return;
	}

	data = host->mrq->data;
	chan = FUNC3(host, data);
	if (!data->host_cookie)
		FUNC0(chan->device->dev,
			     data->sg, data->sg_len,
			     FUNC1(data));

	req_in_progress = host->req_in_progress;
	host->dma_ch = -1;
	FUNC5(&host->irq_lock);

	/* If DMA has finished after TC, complete the request */
	if (!req_in_progress) {
		struct mmc_request *mrq = host->mrq;

		host->mrq = NULL;
		FUNC2(host->mmc, mrq);
	}
}