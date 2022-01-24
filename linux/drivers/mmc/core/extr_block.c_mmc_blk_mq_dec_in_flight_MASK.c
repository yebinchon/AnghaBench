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
struct request {int dummy; } ;
struct mmc_queue {int* in_flight; int /*<<< orphan*/  ctx; int /*<<< orphan*/  card; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t FUNC0 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mmc_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct mmc_queue *mq, struct request *req)
{
	unsigned long flags;
	bool put_card;

	FUNC3(&mq->lock, flags);

	mq->in_flight[FUNC0(mq, req)] -= 1;

	put_card = (FUNC2(mq) == 0);

	FUNC4(&mq->lock, flags);

	if (put_card)
		FUNC1(mq->card, &mq->ctx);
}