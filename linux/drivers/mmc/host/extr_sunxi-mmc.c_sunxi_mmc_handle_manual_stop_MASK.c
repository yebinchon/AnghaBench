#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sunxi_mmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  lock; struct mmc_request* manual_stop_mrq; } ;
struct mmc_request {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sunxi_mmc_host*,struct mmc_request*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sunxi_mmc_host *host = dev_id;
	struct mmc_request *mrq;
	unsigned long iflags;

	FUNC3(&host->lock, iflags);
	mrq = host->manual_stop_mrq;
	FUNC4(&host->lock, iflags);

	if (!mrq) {
		FUNC0(FUNC1(host->mmc), "no request for manual stop\n");
		return IRQ_HANDLED;
	}

	FUNC0(FUNC1(host->mmc), "data error, sending stop command\n");

	/*
	 * We will never have more than one outstanding request,
	 * and we do not complete the request until after
	 * we've cleared host->manual_stop_mrq so we do not need to
	 * spin lock this function.
	 * Additionally we have wait states within this function
	 * so having it in a lock is a very bad idea.
	 */
	FUNC5(host, mrq);

	FUNC3(&host->lock, iflags);
	host->manual_stop_mrq = NULL;
	FUNC4(&host->lock, iflags);

	FUNC2(host->mmc, mrq);

	return IRQ_HANDLED;
}