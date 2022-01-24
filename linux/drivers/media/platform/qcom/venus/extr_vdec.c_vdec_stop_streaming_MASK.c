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
struct venus_inst {int /*<<< orphan*/  lock; scalar_t__ streamon_cap; scalar_t__ streamon_out; } ;
struct vb2_queue {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct venus_inst* FUNC2 (struct vb2_queue*) ; 
 int FUNC3 (struct venus_inst*) ; 
 int FUNC4 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC5 (struct venus_inst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vb2_queue *q)
{
	struct venus_inst *inst = FUNC2(q);
	int ret = -EINVAL;

	FUNC0(&inst->lock);

	if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
		ret = FUNC3(inst);
	else
		ret = FUNC4(inst);

	FUNC5(inst, VB2_BUF_STATE_ERROR);

	if (ret)
		goto unlock;

	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		inst->streamon_out = 0;
	else
		inst->streamon_cap = 0;

unlock:
	FUNC1(&inst->lock);
}