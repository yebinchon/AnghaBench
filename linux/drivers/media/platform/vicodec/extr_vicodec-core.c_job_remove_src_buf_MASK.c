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
typedef  int /*<<< orphan*/  u32 ;
struct vicodec_q_data {int /*<<< orphan*/  sequence; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vicodec_ctx {int /*<<< orphan*/  lock; scalar_t__ cur_buf_offset; TYPE_1__ fh; } ;
struct vb2_v4l2_buffer {scalar_t__ sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 struct vicodec_q_data* FUNC0 (struct vicodec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct vicodec_ctx *ctx, u32 state)
{
	struct vb2_v4l2_buffer *src_buf;
	struct vicodec_q_data *q_src;

	q_src = FUNC0(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
	FUNC1(ctx->lock);
	src_buf = FUNC4(ctx->fh.m2m_ctx);
	src_buf->sequence = q_src->sequence++;
	FUNC3(src_buf, state);
	ctx->cur_buf_offset = 0;
	FUNC2(ctx->lock);
}