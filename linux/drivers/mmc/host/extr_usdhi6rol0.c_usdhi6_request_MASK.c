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
struct usdhi6_host {int /*<<< orphan*/ * sg; struct mmc_request* mrq; int /*<<< orphan*/  timeout_work; } ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct usdhi6_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct usdhi6_host*) ; 
 int FUNC3 (struct usdhi6_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct usdhi6_host*) ; 

__attribute__((used)) static void FUNC5(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct usdhi6_host *host = FUNC1(mmc);
	int ret;

	FUNC0(&host->timeout_work);

	host->mrq = mrq;
	host->sg = NULL;

	FUNC4(host);
	ret = FUNC3(host);
	if (ret < 0) {
		mrq->cmd->error = ret;
		FUNC2(host);
	}
}