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
struct venus_core {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  insts_count; int /*<<< orphan*/  instances; } ;
struct TYPE_2__ {int (* core_deinit ) (struct venus_core*) ;} ;

/* Variables and functions */
 scalar_t__ CORE_UNINIT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(struct venus_core *core, bool blocking)
{
	int ret = 0, empty;

	FUNC2(&core->lock);

	if (core->state == CORE_UNINIT)
		goto unlock;

	empty = FUNC1(&core->instances);

	if (!empty && !blocking) {
		ret = -EBUSY;
		goto unlock;
	}

	if (!empty) {
		FUNC3(&core->lock);
		FUNC5(&core->insts_count,
			       !FUNC0(&core->insts_count));
		FUNC2(&core->lock);
	}

	ret = core->ops->core_deinit(core);

	if (!ret)
		core->state = CORE_UNINIT;

unlock:
	FUNC3(&core->lock);
	return ret;
}