#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vpe_ctx {TYPE_2__* dev; struct vb2_v4l2_buffer* dst_vb; struct vb2_v4l2_buffer** src_vbs; TYPE_1__ fh; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vpe_ctx *ctx,  struct vb2_queue *q,
				   enum vb2_buffer_state state)
{
	struct vb2_v4l2_buffer *vb;
	unsigned long flags;

	for (;;) {
		if (FUNC0(q->type))
			vb = FUNC5(ctx->fh.m2m_ctx);
		else
			vb = FUNC4(ctx->fh.m2m_ctx);
		if (!vb)
			break;
		FUNC1(&ctx->dev->lock, flags);
		FUNC3(vb, state);
		FUNC2(&ctx->dev->lock, flags);
	}

	/*
	 * Cleanup the in-transit vb2 buffers that have been
	 * removed from their respective queue already but for
	 * which procecessing has not been completed yet.
	 */
	if (FUNC0(q->type)) {
		FUNC1(&ctx->dev->lock, flags);

		if (ctx->src_vbs[2])
			FUNC3(ctx->src_vbs[2], state);

		if (ctx->src_vbs[1] && (ctx->src_vbs[1] != ctx->src_vbs[2]))
			FUNC3(ctx->src_vbs[1], state);

		if (ctx->src_vbs[0] &&
		    (ctx->src_vbs[0] != ctx->src_vbs[1]) &&
		    (ctx->src_vbs[0] != ctx->src_vbs[2]))
			FUNC3(ctx->src_vbs[0], state);

		ctx->src_vbs[2] = NULL;
		ctx->src_vbs[1] = NULL;
		ctx->src_vbs[0] = NULL;

		FUNC2(&ctx->dev->lock, flags);
	} else {
		if (ctx->dst_vb) {
			FUNC1(&ctx->dev->lock, flags);

			FUNC3(ctx->dst_vb, state);
			ctx->dst_vb = NULL;
			FUNC2(&ctx->dev->lock, flags);
		}
	}
}