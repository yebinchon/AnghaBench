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
struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_request {int /*<<< orphan*/  completion; int /*<<< orphan*/  done; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct mmc_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*,struct mmc_request*) ; 
 int FUNC5 (struct mmc_test_card*,struct mmc_request*) ; 
 int FUNC6 (struct mmc_test_card*) ; 
 int /*<<< orphan*/  mmc_test_wait_done ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mmc_test_card *test,
			       struct mmc_request *mrq,
			       struct mmc_request *prev_mrq)
{
	struct mmc_host *host = test->card->host;
	int err = 0;

	if (mrq) {
		FUNC0(&mrq->completion);
		mrq->done = mmc_test_wait_done;
		FUNC2(host, mrq);
	}

	if (prev_mrq) {
		FUNC7(&prev_mrq->completion);
		err = FUNC6(test);
		if (!err)
			err = FUNC5(test, prev_mrq);
	}

	if (!err && mrq) {
		err = FUNC4(host, mrq);
		if (err)
			FUNC3(host);
	}

	if (prev_mrq)
		FUNC1(host, prev_mrq, 0);

	if (err && mrq)
		FUNC1(host, mrq, err);

	return err;
}