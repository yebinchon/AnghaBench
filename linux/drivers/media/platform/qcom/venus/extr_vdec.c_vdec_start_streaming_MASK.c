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
struct venus_inst {int /*<<< orphan*/  lock; } ;
struct vb2_queue {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct venus_inst* FUNC2 (struct vb2_queue*) ; 
 int FUNC3 (struct venus_inst*) ; 
 int FUNC4 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC5 (struct venus_inst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vb2_queue *q, unsigned int count)
{
	struct venus_inst *inst = FUNC2(q);
	int ret;

	FUNC0(&inst->lock);

	if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
		ret = FUNC3(inst);
	else
		ret = FUNC4(inst);

	if (ret)
		goto error;

	FUNC1(&inst->lock);
	return 0;

error:
	FUNC5(inst, VB2_BUF_STATE_QUEUED);
	FUNC1(&inst->lock);
	return ret;
}