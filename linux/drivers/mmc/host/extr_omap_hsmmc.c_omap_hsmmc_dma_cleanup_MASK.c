#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {int dma_ch; TYPE_2__* data; scalar_t__ use_dma; int /*<<< orphan*/  irq_lock; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_5__ {int error; scalar_t__ host_cookie; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct dma_chan* FUNC3 (struct omap_hsmmc_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct omap_hsmmc_host *host, int errno)
{
	int dma_ch;
	unsigned long flags;

	host->data->error = errno;

	FUNC4(&host->irq_lock, flags);
	dma_ch = host->dma_ch;
	host->dma_ch = -1;
	FUNC5(&host->irq_lock, flags);

	if (host->use_dma && dma_ch != -1) {
		struct dma_chan *chan = FUNC3(host, host->data);

		FUNC1(chan);
		FUNC0(chan->device->dev,
			host->data->sg, host->data->sg_len,
			FUNC2(host->data));

		host->data->host_cookie = 0;
	}
	host->data = NULL;
}