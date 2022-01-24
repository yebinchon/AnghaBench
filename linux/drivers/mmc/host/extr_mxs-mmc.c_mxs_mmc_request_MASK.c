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
struct mxs_mmc_host {struct mmc_request* mrq; } ;
struct mmc_request {int /*<<< orphan*/  cmd; int /*<<< orphan*/  sbc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mxs_mmc_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxs_mmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct mxs_mmc_host *host = FUNC1(mmc);

	FUNC0(host->mrq != NULL);
	host->mrq = mrq;

	if (mrq->sbc)
		FUNC2(host, mrq->sbc);
	else
		FUNC2(host, mrq->cmd);
}