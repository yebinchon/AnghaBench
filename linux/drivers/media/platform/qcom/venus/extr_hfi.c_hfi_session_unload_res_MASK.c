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
struct venus_inst {scalar_t__ state; int /*<<< orphan*/  done; TYPE_1__* core; } ;
struct hfi_ops {int (* session_release_res ) (struct venus_inst*) ;} ;
struct TYPE_2__ {struct hfi_ops* ops; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INST_RELEASE_RESOURCES ; 
 scalar_t__ INST_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct venus_inst*) ; 
 int FUNC2 (struct venus_inst*) ; 

int FUNC3(struct venus_inst *inst)
{
	const struct hfi_ops *ops = inst->core->ops;
	int ret;

	if (inst->state != INST_STOP)
		return -EINVAL;

	FUNC0(&inst->done);

	ret = ops->session_release_res(inst);
	if (ret)
		return ret;

	ret = FUNC2(inst);
	if (ret)
		return ret;

	inst->state = INST_RELEASE_RESOURCES;

	return 0;
}