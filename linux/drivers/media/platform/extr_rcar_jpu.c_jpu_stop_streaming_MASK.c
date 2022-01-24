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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct jpu_ctx {TYPE_2__* jpu; TYPE_1__ fh; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct jpu_ctx* FUNC6 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC7(struct vb2_queue *vq)
{
	struct jpu_ctx *ctx = FUNC6(vq);
	struct vb2_v4l2_buffer *vb;
	unsigned long flags;

	for (;;) {
		if (FUNC0(vq->type))
			vb = FUNC5(ctx->fh.m2m_ctx);
		else
			vb = FUNC4(ctx->fh.m2m_ctx);
		if (vb == NULL)
			return;
		FUNC1(&ctx->jpu->lock, flags);
		FUNC3(vb, VB2_BUF_STATE_ERROR);
		FUNC2(&ctx->jpu->lock, flags);
	}
}