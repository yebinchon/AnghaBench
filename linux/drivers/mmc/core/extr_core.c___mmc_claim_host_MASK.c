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
struct task_struct {int dummy; } ;
struct mmc_host {int claimed; int claim_cnt; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; } ;
struct mmc_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct mmc_host*,struct mmc_ctx*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,struct mmc_ctx*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct mmc_host *host, struct mmc_ctx *ctx,
		     atomic_t *abort)
{
	struct task_struct *task = ctx ? NULL : current;
	FUNC0(wait, current);
	unsigned long flags;
	int stop;
	bool pm = false;

	FUNC3();

	FUNC1(&host->wq, &wait);
	FUNC11(&host->lock, flags);
	while (1) {
		FUNC10(TASK_UNINTERRUPTIBLE);
		stop = abort ? FUNC2(abort) : 0;
		if (stop || !host->claimed || FUNC4(host, ctx, task))
			break;
		FUNC12(&host->lock, flags);
		FUNC9();
		FUNC11(&host->lock, flags);
	}
	FUNC10(TASK_RUNNING);
	if (!stop) {
		host->claimed = 1;
		FUNC5(host, ctx, task);
		host->claim_cnt += 1;
		if (host->claim_cnt == 1)
			pm = true;
	} else
		FUNC13(&host->wq);
	FUNC12(&host->lock, flags);
	FUNC8(&host->wq, &wait);

	if (pm)
		FUNC7(FUNC6(host));

	return stop;
}