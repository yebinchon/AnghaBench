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
struct via_crdr_mmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  lock; int /*<<< orphan*/ * data; int /*<<< orphan*/ * cmd; struct mmc_request* mrq; int /*<<< orphan*/  timer; } ;
struct mmc_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long param)
{
	struct via_crdr_mmc_host *host;
	unsigned long flags;
	struct mmc_request *mrq;

	host = (struct via_crdr_mmc_host *)param;

	FUNC2(&host->lock, flags);

	FUNC0(&host->timer);
	mrq = host->mrq;
	host->mrq = NULL;
	host->cmd = NULL;
	host->data = NULL;

	FUNC3(&host->lock, flags);

	FUNC1(host->mmc, mrq);
}