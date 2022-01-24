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
struct venus_core {TYPE_1__* res; int /*<<< orphan*/  done; int /*<<< orphan*/  state; struct hfi_core_ops const* core_ops; int /*<<< orphan*/  insts_count; } ;
struct hfi_core_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hfi_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_UNINIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct venus_core*) ; 

int FUNC4(struct venus_core *core, const struct hfi_core_ops *ops)
{
	int ret;

	if (!ops)
		return -EINVAL;

	FUNC0(&core->insts_count, 0);
	core->core_ops = ops;
	core->state = CORE_UNINIT;
	FUNC1(&core->done);
	FUNC2(core->res->hfi_version);
	ret = FUNC3(core);

	return ret;
}