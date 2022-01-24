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
struct mmc_request {int /*<<< orphan*/  completion; TYPE_1__* cmd; int /*<<< orphan*/  done; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_request*) ; 
 int FUNC3 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  mmc_wait_done ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *host, struct mmc_request *mrq)
{
	int err;

	FUNC4(host);

	FUNC1(&mrq->completion);
	mrq->done = mmc_wait_done;

	err = FUNC3(host, mrq);
	if (err) {
		mrq->cmd->error = err;
		FUNC2(mrq);
		FUNC0(&mrq->completion);
	}

	return err;
}