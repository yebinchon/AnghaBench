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
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct jpu_ctx {TYPE_1__ fh; TYPE_2__* jpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  JCCMD ; 
 int /*<<< orphan*/  JCCMD_SRST ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct jpu_ctx *ctx, bool reset)
{
	/* remove current buffers and finish job */
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	unsigned long flags;

	FUNC1(&ctx->jpu->lock, flags);

	src_buf = FUNC6(ctx->fh.m2m_ctx);
	dst_buf = FUNC4(ctx->fh.m2m_ctx);

	FUNC3(src_buf, VB2_BUF_STATE_ERROR);
	FUNC3(dst_buf, VB2_BUF_STATE_ERROR);

	/* ...and give it a chance on next run */
	if (reset)
		FUNC0(ctx->jpu, JCCMD_SRST, JCCMD);

	FUNC2(&ctx->jpu->lock, flags);

	FUNC5(ctx->jpu->m2m_dev, ctx->fh.m2m_ctx);
}