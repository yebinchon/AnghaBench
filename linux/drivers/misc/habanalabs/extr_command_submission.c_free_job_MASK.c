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
struct hl_device {int dummy; } ;
struct hl_cs_job {scalar_t__ ext_queue; int /*<<< orphan*/  cs_node; TYPE_1__* patched_cb; int /*<<< orphan*/  userptr_list; struct hl_cs* cs; } ;
struct hl_cs {int /*<<< orphan*/  job_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cs_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hl_cs*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_device*,struct hl_cs_job*) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_cs_job*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hl_device *hdev, struct hl_cs_job *job)
{
	struct hl_cs *cs = job->cs;

	if (job->ext_queue) {
		FUNC3(hdev, &job->userptr_list);

		/*
		 * We might arrive here from rollback and patched CB wasn't
		 * created, so we need to check it's not NULL
		 */
		if (job->patched_cb) {
			FUNC6(&job->patched_cb->lock);
			job->patched_cb->cs_cnt--;
			FUNC7(&job->patched_cb->lock);

			FUNC1(job->patched_cb);
		}
	}

	/*
	 * This is the only place where there can be multiple threads
	 * modifying the list at the same time
	 */
	FUNC6(&cs->job_lock);
	FUNC5(&job->cs_node);
	FUNC7(&cs->job_lock);

	FUNC2(hdev, job);

	if (job->ext_queue)
		FUNC0(cs);

	FUNC4(job);
}