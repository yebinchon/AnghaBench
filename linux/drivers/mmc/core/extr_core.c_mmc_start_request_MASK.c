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
struct mmc_request {int /*<<< orphan*/  cmd_completion; } ;
struct mmc_host {int /*<<< orphan*/  led; int /*<<< orphan*/  claimed; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int ENOMEDIUM ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,struct mmc_request*,int) ; 
 int FUNC6 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 

int FUNC8(struct mmc_host *host, struct mmc_request *mrq)
{
	int err;

	FUNC2(&mrq->cmd_completion);

	FUNC7(host);

	if (FUNC4(host->card))
		return -ENOMEDIUM;

	FUNC5(host, mrq, false);

	FUNC0(!host->claimed);

	err = FUNC6(host, mrq);
	if (err)
		return err;

	FUNC3(host->led, LED_FULL);
	FUNC1(host, mrq);

	return 0;
}