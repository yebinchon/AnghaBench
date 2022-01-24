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
struct genwqe_dev {int /*<<< orphan*/  queue_waitq; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 scalar_t__ GENWQE_POLLING_ENABLED ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct genwqe_dev*) ; 
 scalar_t__ FUNC3 (struct genwqe_dev*) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(void *data)
{
	int should_stop = 0, rc = 0;
	struct genwqe_dev *cd = (struct genwqe_dev *)data;

	while (!FUNC4()) {

		FUNC1(cd, &cd->queue);

		if (GENWQE_POLLING_ENABLED) {
			rc = FUNC5(
				cd->queue_waitq,
				FUNC2(cd) ||
				(should_stop = FUNC4()), 1);
		} else {
			rc = FUNC5(
				cd->queue_waitq,
				FUNC3(cd) ||
				(should_stop = FUNC4()), HZ);
		}
		if (should_stop)
			break;

		/*
		 * Avoid soft lockups on heavy loads; we do not want
		 * to disable our interrupts.
		 */
		FUNC0();
	}
	return 0;
}