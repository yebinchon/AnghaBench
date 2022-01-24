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
struct mmc_queue {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_queue*,struct request**) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_queue*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mmc_queue *mq, struct request **prev_req)
{
	int err = 0;

	FUNC2(mq->wait, FUNC1(mq, &err));

	/* Always complete the previous request if there is one */
	FUNC0(mq, prev_req);

	return err;
}