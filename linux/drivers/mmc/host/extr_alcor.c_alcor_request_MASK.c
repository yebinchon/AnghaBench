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
struct alcor_sdmmc_host {int /*<<< orphan*/  cmd_mutex; struct mmc_request* mrq; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEDIUM ; 
 scalar_t__ FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_sdmmc_host*,TYPE_1__*,int) ; 
 struct alcor_sdmmc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct alcor_sdmmc_host *host = FUNC3(mmc);

	FUNC4(&host->cmd_mutex);

	host->mrq = mrq;

	/* check if card is present then send command and data */
	if (FUNC0(mmc))
		FUNC2(host, mrq->cmd, true);
	else {
		mrq->cmd->error = -ENOMEDIUM;
		FUNC1(host, 1);
	}

	FUNC5(&host->cmd_mutex);
}