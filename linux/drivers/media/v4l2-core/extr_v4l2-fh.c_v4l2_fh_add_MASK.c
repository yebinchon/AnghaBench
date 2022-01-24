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
struct v4l2_fh {TYPE_1__* vdev; int /*<<< orphan*/  list; int /*<<< orphan*/  prio; } ;
struct TYPE_2__ {int /*<<< orphan*/  fh_lock; int /*<<< orphan*/  fh_list; int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct v4l2_fh *fh)
{
	unsigned long flags;

	FUNC3(fh->vdev->prio, &fh->prio);
	FUNC1(&fh->vdev->fh_lock, flags);
	FUNC0(&fh->list, &fh->vdev->fh_list);
	FUNC2(&fh->vdev->fh_lock, flags);
}