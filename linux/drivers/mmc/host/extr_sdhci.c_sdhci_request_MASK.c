#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sdhci_host {int flags; int /*<<< orphan*/  lock; } ;
struct mmc_request {TYPE_3__* cmd; TYPE_3__* sbc; int /*<<< orphan*/ * stop; TYPE_2__* data; } ;
struct mmc_host {TYPE_1__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  error; } ;
struct TYPE_5__ {int /*<<< orphan*/ * stop; } ;
struct TYPE_4__ {int (* get_cd ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEDIUM ; 
 int SDHCI_AUTO_CMD23 ; 
 int SDHCI_DEVICE_DEAD ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 scalar_t__ FUNC1 (struct sdhci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct mmc_host*) ; 

void FUNC8(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct sdhci_host *host;
	int present;
	unsigned long flags;

	host = FUNC0(mmc);

	/* Firstly check card presence */
	present = mmc->ops->get_cd(mmc);

	FUNC5(&host->lock, flags);

	FUNC3(host);

	/*
	 * Ensure we don't send the STOP for non-SET_BLOCK_COUNTED
	 * requests if Auto-CMD12 is enabled.
	 */
	if (FUNC1(host, mrq)) {
		if (mrq->stop) {
			mrq->data->stop = NULL;
			mrq->stop = NULL;
		}
	}

	if (!present || host->flags & SDHCI_DEVICE_DEAD) {
		mrq->cmd->error = -ENOMEDIUM;
		FUNC2(host, mrq);
	} else {
		if (mrq->sbc && !(host->flags & SDHCI_AUTO_CMD23))
			FUNC4(host, mrq->sbc);
		else
			FUNC4(host, mrq->cmd);
	}

	FUNC6(&host->lock, flags);
}