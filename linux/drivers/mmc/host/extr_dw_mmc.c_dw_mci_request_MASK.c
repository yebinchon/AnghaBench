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
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct dw_mci_slot {int /*<<< orphan*/  mrq; struct dw_mci* host; } ;
struct dw_mci {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,struct dw_mci_slot*,struct mmc_request*) ; 
 struct dw_mci_slot* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct dw_mci_slot *slot = FUNC3(mmc);
	struct dw_mci *host = slot->host;

	FUNC0(slot->mrq);

	/*
	 * The check for card presence and queueing of the request must be
	 * atomic, otherwise the card could be removed in between and the
	 * request wouldn't fail until another card was inserted.
	 */

	if (!FUNC1(mmc)) {
		mrq->cmd->error = -ENOMEDIUM;
		FUNC4(mmc, mrq);
		return;
	}

	FUNC5(&host->lock);

	FUNC2(host, slot, mrq);

	FUNC6(&host->lock);
}