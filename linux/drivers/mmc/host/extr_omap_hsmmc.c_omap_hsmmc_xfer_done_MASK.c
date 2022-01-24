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
struct omap_hsmmc_host {struct mmc_request* mrq; int /*<<< orphan*/ * data; scalar_t__ response_busy; TYPE_1__* cmd; } ;
struct mmc_request {int /*<<< orphan*/  sbc; } ;
struct mmc_data {int blocks; int blksz; struct mmc_request* mrq; scalar_t__ stop; scalar_t__ error; scalar_t__ bytes_xfered; } ;
struct TYPE_2__ {int opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_hsmmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_hsmmc_host*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct omap_hsmmc_host *host, struct mmc_data *data)
{
	if (!data) {
		struct mmc_request *mrq = host->mrq;

		/* TC before CC from CMD6 - don't know why, but it happens */
		if (host->cmd && host->cmd->opcode == 6 &&
		    host->response_busy) {
			host->response_busy = 0;
			return;
		}

		FUNC0(host, mrq);
		return;
	}

	host->data = NULL;

	if (!data->error)
		data->bytes_xfered += data->blocks * (data->blksz);
	else
		data->bytes_xfered = 0;

	if (data->stop && (data->error || !host->mrq->sbc))
		FUNC1(host, data->stop, NULL);
	else
		FUNC0(host, data->mrq);
}