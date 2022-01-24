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
struct vicodec_q_data {int /*<<< orphan*/  sequence; } ;
struct vicodec_ctx {int /*<<< orphan*/  is_enc; } ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  flags; scalar_t__ sequence; int /*<<< orphan*/  vb2_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_FLAG_LAST ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 struct vicodec_q_data* FUNC0 (struct vicodec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_v4l2_buffer const*,struct vb2_v4l2_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vb2_v4l2_buffer *dst_buf,
			    const struct vb2_v4l2_buffer *src_buf,
			    struct vicodec_ctx *ctx)
{
	struct vicodec_q_data *q_dst = FUNC0(ctx,
						  V4L2_BUF_TYPE_VIDEO_CAPTURE);

	FUNC3(&dst_buf->vb2_buf, 0, 0);
	dst_buf->sequence = q_dst->sequence++;

	FUNC1(src_buf, dst_buf, !ctx->is_enc);
	dst_buf->flags |= V4L2_BUF_FLAG_LAST;
	FUNC2(dst_buf, VB2_BUF_STATE_DONE);
}