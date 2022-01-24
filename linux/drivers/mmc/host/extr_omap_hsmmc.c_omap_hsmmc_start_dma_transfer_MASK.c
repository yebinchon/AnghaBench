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
struct omap_hsmmc_host {int /*<<< orphan*/  base; struct mmc_request* mrq; } ;
struct mmc_request {TYPE_1__* data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int blksz; int blocks; int /*<<< orphan*/  timeout_clks; int /*<<< orphan*/  timeout_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 struct dma_chan* FUNC2 (struct omap_hsmmc_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hsmmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct omap_hsmmc_host *host)
{
	struct mmc_request *req = host->mrq;
	struct dma_chan *chan;

	if (!req->data)
		return;
	FUNC0(host->base, BLK, (req->data->blksz)
				| (req->data->blocks << 16));
	FUNC3(host, req->data->timeout_ns,
				req->data->timeout_clks);
	chan = FUNC2(host, req->data);
	FUNC1(chan);
}