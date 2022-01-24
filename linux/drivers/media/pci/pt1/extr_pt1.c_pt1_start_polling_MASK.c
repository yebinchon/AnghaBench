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
struct pt1 {int /*<<< orphan*/  lock; int /*<<< orphan*/ * kthread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct pt1*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pt1_thread ; 

__attribute__((used)) static int FUNC5(struct pt1 *pt1)
{
	int ret = 0;

	FUNC3(&pt1->lock);
	if (!pt1->kthread) {
		pt1->kthread = FUNC2(pt1_thread, pt1, "earth-pt1");
		if (FUNC0(pt1->kthread)) {
			ret = FUNC1(pt1->kthread);
			pt1->kthread = NULL;
		}
	}
	FUNC4(&pt1->lock);
	return ret;
}