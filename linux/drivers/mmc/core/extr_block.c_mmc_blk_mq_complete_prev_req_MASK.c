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
struct request {int dummy; } ;
struct mmc_queue {int /*<<< orphan*/  complete_lock; struct request* complete_req; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_queue*,struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mmc_queue *mq,
					 struct request **prev_req)
{
	if (FUNC2(mq->card->host))
		return;

	FUNC3(&mq->complete_lock);

	if (!mq->complete_req)
		goto out_unlock;

	FUNC0(mq, mq->complete_req);

	if (prev_req)
		*prev_req = mq->complete_req;
	else
		FUNC1(mq, mq->complete_req);

	mq->complete_req = NULL;

out_unlock:
	FUNC4(&mq->complete_lock);
}