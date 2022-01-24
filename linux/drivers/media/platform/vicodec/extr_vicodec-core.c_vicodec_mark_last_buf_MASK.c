#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vicodec_ctx {int is_draining; int has_stopped; int next_is_last; int /*<<< orphan*/  lock; TYPE_1__ fh; scalar_t__ last_src_buf; } ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_LAST ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vicodec_eos_event ; 

__attribute__((used)) static int FUNC6(struct vicodec_ctx *ctx)
{
	struct vb2_v4l2_buffer *next_dst_buf;
	int ret = 0;

	FUNC0(ctx->lock);
	if (ctx->is_draining) {
		ret = -EBUSY;
		goto unlock;
	}
	if (ctx->has_stopped)
		goto unlock;

	ctx->last_src_buf = FUNC4(ctx->fh.m2m_ctx);
	ctx->is_draining = true;
	if (ctx->last_src_buf)
		goto unlock;

	next_dst_buf = FUNC3(ctx->fh.m2m_ctx);
	if (!next_dst_buf) {
		ctx->next_is_last = true;
		goto unlock;
	}

	next_dst_buf->flags |= V4L2_BUF_FLAG_LAST;
	FUNC5(&next_dst_buf->vb2_buf, VB2_BUF_STATE_DONE);
	ctx->is_draining = false;
	ctx->has_stopped = true;
	FUNC2(&ctx->fh, &vicodec_eos_event);

unlock:
	FUNC1(ctx->lock);
	return ret;
}