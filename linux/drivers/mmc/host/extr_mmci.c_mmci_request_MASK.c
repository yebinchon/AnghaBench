#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mmci_host {int /*<<< orphan*/  lock; TYPE_1__* variant; struct mmc_request* mrq; } ;
struct mmc_request {TYPE_4__* cmd; TYPE_4__* sbc; TYPE_2__* data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  error; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {scalar_t__ datactrl_first; } ;

/* Variables and functions */
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mmci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmci_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmci_host*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmci_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmci_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct mmci_host *host = FUNC1(mmc);
	unsigned long flags;

	FUNC0(host->mrq != NULL);

	mrq->cmd->error = FUNC6(host, mrq->data);
	if (mrq->cmd->error) {
		FUNC2(mmc, mrq);
		return;
	}

	FUNC7(&host->lock, flags);

	host->mrq = mrq;

	if (mrq->data)
		FUNC3(host, mrq->data);

	if (mrq->data &&
	    (host->variant->datactrl_first || mrq->data->flags & MMC_DATA_READ))
		FUNC5(host, mrq->data);

	if (mrq->sbc)
		FUNC4(host, mrq->sbc, 0);
	else
		FUNC4(host, mrq->cmd, 0);

	FUNC8(&host->lock, flags);
}