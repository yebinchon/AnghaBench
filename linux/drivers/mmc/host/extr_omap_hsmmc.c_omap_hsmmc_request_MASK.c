#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {int req_in_progress; int dma_ch; int flags; struct mmc_request* mrq; int /*<<< orphan*/  fclk; int /*<<< orphan*/  clk_rate; scalar_t__ reqs_blocked; } ;
struct mmc_request {TYPE_2__* data; TYPE_1__* cmd; TYPE_1__* sbc; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_3__ {int error; } ;

/* Variables and functions */
 int AUTO_CMD23 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct omap_hsmmc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,struct mmc_request*) ; 
 int FUNC5 (struct omap_hsmmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_hsmmc_host*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static void FUNC8(struct mmc_host *mmc, struct mmc_request *req)
{
	struct omap_hsmmc_host *host = FUNC3(mmc);
	int err;

	FUNC0(host->req_in_progress);
	FUNC0(host->dma_ch != -1);
	if (host->reqs_blocked)
		host->reqs_blocked = 0;
	FUNC1(host->mrq != NULL);
	host->mrq = req;
	host->clk_rate = FUNC2(host->fclk);
	err = FUNC5(host, req);
	if (err) {
		req->cmd->error = err;
		if (req->data)
			req->data->error = err;
		host->mrq = NULL;
		FUNC4(mmc, req);
		return;
	}
	if (req->sbc && !(host->flags & AUTO_CMD23)) {
		FUNC6(host, req->sbc, NULL);
		return;
	}

	FUNC7(host);
	FUNC6(host, req->cmd, req->data);
}