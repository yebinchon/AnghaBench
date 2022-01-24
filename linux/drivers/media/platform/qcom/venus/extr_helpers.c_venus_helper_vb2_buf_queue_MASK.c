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
struct venus_inst {scalar_t__ session_type; int /*<<< orphan*/  lock; scalar_t__ streamon_cap; scalar_t__ streamon_out; struct v4l2_m2m_ctx* m2m_ctx; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct v4l2_m2m_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIDC_SESSION_TYPE_ENC ; 
 int FUNC0 (struct venus_inst*,struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_inst*,struct vb2_v4l2_buffer*) ; 
 int FUNC4 (struct venus_inst*,struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC5 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_m2m_ctx*,struct vb2_v4l2_buffer*) ; 
 struct venus_inst* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC5(vb);
	struct venus_inst *inst = FUNC7(vb->vb2_queue);
	struct v4l2_m2m_ctx *m2m_ctx = inst->m2m_ctx;
	int ret;

	FUNC1(&inst->lock);

	FUNC6(m2m_ctx, vbuf);

	if (inst->session_type == VIDC_SESSION_TYPE_ENC &&
	    !(inst->streamon_out && inst->streamon_cap))
		goto unlock;

	if (FUNC8(vb->vb2_queue)) {
		ret = FUNC0(inst, vbuf);
		if (ret)
			goto unlock;

		ret = FUNC4(inst, vbuf);
		if (ret)
			FUNC3(inst, vbuf);
	}

unlock:
	FUNC2(&inst->lock);
}