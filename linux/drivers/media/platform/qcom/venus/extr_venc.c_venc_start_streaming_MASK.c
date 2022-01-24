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
struct venus_inst {int streamon_out; int streamon_cap; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_output_bufs; int /*<<< orphan*/  num_input_bufs; scalar_t__ sequence_out; scalar_t__ sequence_cap; } ;
struct vb2_queue {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct venus_inst* FUNC3 (struct vb2_queue*) ; 
 int FUNC4 (struct venus_inst*) ; 
 int FUNC5 (struct venus_inst*) ; 
 int FUNC6 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC7 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct venus_inst*) ; 
 int FUNC9 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct venus_inst*) ; 

__attribute__((used)) static int FUNC11(struct vb2_queue *q, unsigned int count)
{
	struct venus_inst *inst = FUNC3(q);
	int ret;

	FUNC1(&inst->lock);

	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		inst->streamon_out = 1;
	else
		inst->streamon_cap = 1;

	if (!(inst->streamon_out & inst->streamon_cap)) {
		FUNC2(&inst->lock);
		return 0;
	}

	FUNC8(inst);

	inst->sequence_cap = 0;
	inst->sequence_out = 0;

	ret = FUNC4(inst);
	if (ret)
		goto bufs_done;

	ret = FUNC5(inst);
	if (ret)
		goto deinit_sess;

	ret = FUNC6(inst);
	if (ret)
		goto deinit_sess;

	ret = FUNC9(inst, inst->num_input_bufs,
					inst->num_output_bufs, 0);
	if (ret)
		goto deinit_sess;

	ret = FUNC10(inst);
	if (ret)
		goto deinit_sess;

	FUNC2(&inst->lock);

	return 0;

deinit_sess:
	FUNC0(inst);
bufs_done:
	FUNC7(inst, VB2_BUF_STATE_QUEUED);
	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		inst->streamon_out = 0;
	else
		inst->streamon_cap = 0;
	FUNC2(&inst->lock);
	return ret;
}