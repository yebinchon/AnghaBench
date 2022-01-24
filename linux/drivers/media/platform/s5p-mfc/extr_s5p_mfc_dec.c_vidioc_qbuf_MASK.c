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
struct v4l2_buffer {scalar_t__ type; } ;
struct s5p_mfc_ctx {scalar_t__ state; int /*<<< orphan*/  vq_dst; int /*<<< orphan*/  vq_src; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ MFCINST_ERROR ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 struct s5p_mfc_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, struct v4l2_buffer *buf)
{
	struct s5p_mfc_ctx *ctx = FUNC0(priv);

	if (ctx->state == MFCINST_ERROR) {
		FUNC1("Call on QBUF after unrecoverable error\n");
		return -EIO;
	}
	if (buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		return FUNC2(&ctx->vq_src, NULL, buf);
	else if (buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
		return FUNC2(&ctx->vq_dst, NULL, buf);
	return -EINVAL;
}