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
struct request_queue {int dummy; } ;
struct mmc_queue {int /*<<< orphan*/ * card; int /*<<< orphan*/  complete_work; int /*<<< orphan*/  tag_set; struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 scalar_t__ FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mmc_queue *mq)
{
	struct request_queue *q = mq->queue;

	/*
	 * The legacy code handled the possibility of being suspended,
	 * so do that here too.
	 */
	if (FUNC3(q))
		FUNC2(q);

	FUNC0(q);
	FUNC1(&mq->tag_set);

	/*
	 * A request can be completed before the next request, potentially
	 * leaving a complete_work with nothing to do. Such a work item might
	 * still be queued at this point. Flush it.
	 */
	FUNC4(&mq->complete_work);

	mq->card = NULL;
}