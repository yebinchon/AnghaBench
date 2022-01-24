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
struct venus_inst {int streamon_out; int streamon_cap; int /*<<< orphan*/  lock; int /*<<< orphan*/  registeredbufs; scalar_t__ session_error; struct venus_core* core; } ;
struct venus_core {scalar_t__ sys_error; } ;
struct vb2_queue {scalar_t__ type; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct venus_inst*) ; 
 int FUNC2 (struct venus_inst*) ; 
 int FUNC3 (struct venus_inst*) ; 
 int FUNC4 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct venus_inst* FUNC7 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct venus_inst*) ; 
 int FUNC10 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC11 (struct venus_core*) ; 
 int FUNC12 (struct venus_inst*) ; 

void FUNC13(struct vb2_queue *q)
{
	struct venus_inst *inst = FUNC7(q);
	struct venus_core *core = inst->core;
	int ret;

	FUNC5(&inst->lock);

	if (inst->streamon_out & inst->streamon_cap) {
		ret = FUNC3(inst);
		ret |= FUNC4(inst);
		ret |= FUNC12(inst);
		ret |= FUNC10(inst);
		ret |= FUNC2(inst);

		if (inst->session_error || core->sys_error)
			ret = -EIO;

		if (ret)
			FUNC1(inst);

		FUNC9(inst);

		FUNC11(core);
		FUNC0(&inst->registeredbufs);
	}

	FUNC8(inst, VB2_BUF_STATE_ERROR);

	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		inst->streamon_out = 0;
	else
		inst->streamon_cap = 0;

	FUNC6(&inst->lock);
}