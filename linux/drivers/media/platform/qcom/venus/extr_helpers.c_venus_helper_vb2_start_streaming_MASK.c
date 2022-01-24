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
struct venus_inst {struct venus_core* core; } ;
struct venus_core {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct venus_inst*) ; 
 int FUNC1 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_inst*) ; 
 int FUNC3 (struct venus_inst*) ; 
 int FUNC4 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC5 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC6 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC7 (struct venus_inst*) ; 

int FUNC8(struct venus_inst *inst)
{
	struct venus_core *core = inst->core;
	int ret;

	ret = FUNC4(inst);
	if (ret)
		return ret;

	ret = FUNC3(inst);
	if (ret)
		goto err_bufs_free;

	FUNC6(core);

	ret = FUNC0(inst);
	if (ret)
		goto err_unreg_bufs;

	ret = FUNC1(inst);
	if (ret)
		goto err_unload_res;

	return 0;

err_unload_res:
	FUNC2(inst);
err_unreg_bufs:
	FUNC7(inst);
err_bufs_free:
	FUNC5(inst);
	return ret;
}