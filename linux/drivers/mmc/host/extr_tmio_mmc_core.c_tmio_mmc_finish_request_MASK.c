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
struct tmio_mmc_host {scalar_t__ cmd; int /*<<< orphan*/  mmc; struct mmc_request* mrq; scalar_t__ (* check_scc_error ) (struct tmio_mmc_host*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  delayed_reset_work; int /*<<< orphan*/ * data; } ;
struct mmc_request {scalar_t__ sbc; TYPE_2__* cmd; TYPE_1__* data; } ;
struct TYPE_4__ {scalar_t__ error; } ;
struct TYPE_3__ {scalar_t__ error; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct tmio_mmc_host*,struct mmc_request*) ; 

__attribute__((used)) static void FUNC9(struct tmio_mmc_host *host)
{
	struct mmc_request *mrq;
	unsigned long flags;

	FUNC4(&host->lock, flags);

	mrq = host->mrq;
	if (FUNC0(mrq)) {
		FUNC5(&host->lock, flags);
		return;
	}

	/* If not SET_BLOCK_COUNT, clear old data */
	if (host->cmd != mrq->sbc) {
		host->cmd = NULL;
		host->data = NULL;
		host->mrq = NULL;
	}

	FUNC1(&host->delayed_reset_work);

	FUNC5(&host->lock, flags);

	if (mrq->cmd->error || (mrq->data && mrq->data->error))
		FUNC7(host);

	/* SCC error means retune, but executed command was still successful */
	if (host->check_scc_error && host->check_scc_error(host))
		FUNC3(host->mmc);

	/* If SET_BLOCK_COUNT, continue with main command */
	if (host->mrq && !mrq->cmd->error) {
		FUNC8(host, mrq);
		return;
	}

	FUNC2(host->mmc, mrq);
}