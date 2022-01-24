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
struct venus_inst {int /*<<< orphan*/  list; struct hfi_inst_ops const* ops; int /*<<< orphan*/  done; int /*<<< orphan*/  state; struct venus_core* core; } ;
struct venus_core {int /*<<< orphan*/  lock; int /*<<< orphan*/  insts_count; int /*<<< orphan*/  instances; } ;
struct hfi_inst_ops {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INST_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct venus_inst *inst, const struct hfi_inst_ops *ops)
{
	struct venus_core *core = inst->core;

	if (!ops)
		return -EINVAL;

	inst->state = INST_UNINIT;
	FUNC1(&inst->done);
	inst->ops = ops;

	FUNC3(&core->lock);
	FUNC2(&inst->list, &core->instances);
	FUNC0(&core->insts_count);
	FUNC4(&core->lock);

	return 0;
}