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
struct venus_inst {int /*<<< orphan*/  lock; int /*<<< orphan*/  registeredbufs; scalar_t__ session_error; int /*<<< orphan*/  codec_state; struct venus_core* core; } ;
struct venus_core {scalar_t__ sys_error; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VENUS_DEC_STATE_DEINIT ; 
 int /*<<< orphan*/  FUNC1 (struct venus_inst*) ; 
 int FUNC2 (struct venus_inst*) ; 
 int FUNC3 (struct venus_inst*) ; 
 int FUNC4 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct venus_inst*) ; 
 int FUNC8 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC9 (struct venus_core*) ; 
 int FUNC10 (struct venus_inst*) ; 

__attribute__((used)) static void FUNC11(struct venus_inst *inst)
{
	struct venus_core *core = inst->core;
	int ret, abort = 0;

	FUNC5(&inst->lock);

	inst->codec_state = VENUS_DEC_STATE_DEINIT;

	ret = FUNC3(inst);
	abort = (ret && ret != -EINVAL) ? 1 : 0;
	ret = FUNC4(inst);
	abort = (ret && ret != -EINVAL) ? 1 : 0;
	ret = FUNC10(inst);
	abort = (ret && ret != -EINVAL) ? 1 : 0;
	ret = FUNC8(inst);
	abort = (ret && ret != -EINVAL) ? 1 : 0;
	ret = FUNC2(inst);
	abort = (ret && ret != -EINVAL) ? 1 : 0;

	if (inst->session_error || core->sys_error)
		abort = 1;

	if (abort)
		FUNC1(inst);

	FUNC7(inst);
	FUNC9(core);
	FUNC0(&inst->registeredbufs);

	FUNC6(&inst->lock);
}