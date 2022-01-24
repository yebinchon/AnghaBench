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
struct venus_core {scalar_t__ state; scalar_t__ error; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* core_init ) (struct venus_core*) ;} ;

/* Variables and functions */
 scalar_t__ CORE_INIT ; 
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ HFI_ERR_NONE ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct venus_core*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct venus_core *core)
{
	int ret = 0;

	FUNC0(&core->lock);

	if (core->state >= CORE_INIT)
		goto unlock;

	FUNC2(&core->done);

	ret = core->ops->core_init(core);
	if (ret)
		goto unlock;

	ret = FUNC4(&core->done, TIMEOUT);
	if (!ret) {
		ret = -ETIMEDOUT;
		goto unlock;
	}

	ret = 0;

	if (core->error != HFI_ERR_NONE) {
		ret = -EIO;
		goto unlock;
	}

	core->state = CORE_INIT;
unlock:
	FUNC1(&core->lock);
	return ret;
}