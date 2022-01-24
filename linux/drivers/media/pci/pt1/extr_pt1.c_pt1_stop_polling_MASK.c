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
struct pt1 {int /*<<< orphan*/  lock; int /*<<< orphan*/ * kthread; TYPE_1__** adaps; } ;
struct TYPE_2__ {scalar_t__ users; } ;

/* Variables and functions */
 int PT1_NR_ADAPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pt1 *pt1)
{
	int i, count;

	FUNC1(&pt1->lock);
	for (i = 0, count = 0; i < PT1_NR_ADAPS; i++)
		count += pt1->adaps[i]->users;

	if (count == 0 && pt1->kthread) {
		FUNC0(pt1->kthread);
		pt1->kthread = NULL;
	}
	FUNC2(&pt1->lock);
}