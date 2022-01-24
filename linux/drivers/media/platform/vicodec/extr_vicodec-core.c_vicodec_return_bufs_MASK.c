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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vicodec_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  hdl; TYPE_3__ fh; } ;
struct TYPE_4__ {int /*<<< orphan*/  req; } ;
struct TYPE_5__ {TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC6 (int /*<<< orphan*/ ) ; 
 struct vicodec_ctx* FUNC7 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC8(struct vb2_queue *q, u32 state)
{
	struct vicodec_ctx *ctx = FUNC7(q);
	struct vb2_v4l2_buffer *vbuf;

	for (;;) {
		if (FUNC0(q->type))
			vbuf = FUNC6(ctx->fh.m2m_ctx);
		else
			vbuf = FUNC5(ctx->fh.m2m_ctx);
		if (vbuf == NULL)
			return;
		FUNC3(vbuf->vb2_buf.req_obj.req,
					   &ctx->hdl);
		FUNC1(ctx->lock);
		FUNC4(vbuf, state);
		FUNC2(ctx->lock);
	}
}