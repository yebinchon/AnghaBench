#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vim2m_ctx {int /*<<< orphan*/  irqlock; int /*<<< orphan*/  hdl; TYPE_1__ fh; int /*<<< orphan*/  work_run; } ;
struct TYPE_5__ {int /*<<< orphan*/  req; } ;
struct TYPE_6__ {TYPE_2__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_3__ vb2_buf; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC6 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC7 (int /*<<< orphan*/ ) ; 
 struct vim2m_ctx* FUNC8 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC9(struct vb2_queue *q)
{
	struct vim2m_ctx *ctx = FUNC8(q);
	struct vb2_v4l2_buffer *vbuf;
	unsigned long flags;

	FUNC1(&ctx->work_run);

	for (;;) {
		if (FUNC0(q->type))
			vbuf = FUNC7(ctx->fh.m2m_ctx);
		else
			vbuf = FUNC6(ctx->fh.m2m_ctx);
		if (!vbuf)
			return;
		FUNC4(vbuf->vb2_buf.req_obj.req,
					   &ctx->hdl);
		FUNC2(&ctx->irqlock, flags);
		FUNC5(vbuf, VB2_BUF_STATE_ERROR);
		FUNC3(&ctx->irqlock, flags);
	}
}