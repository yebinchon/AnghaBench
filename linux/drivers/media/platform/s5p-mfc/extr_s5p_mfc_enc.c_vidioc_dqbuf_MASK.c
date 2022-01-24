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
struct v4l2_event {int /*<<< orphan*/  type; } ;
struct v4l2_buffer {scalar_t__ type; } ;
struct TYPE_2__ {int /*<<< orphan*/  done_list; } ;
struct s5p_mfc_ctx {scalar_t__ state; int /*<<< orphan*/  fh; TYPE_1__ vq_dst; TYPE_1__ vq_src; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ MFCINST_ERROR ; 
 scalar_t__ MFCINST_FINISHED ; 
 int O_NONBLOCK ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  V4L2_EVENT_EOS ; 
 struct s5p_mfc_ctx* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct v4l2_event const*) ; 
 int FUNC4 (TYPE_1__*,struct v4l2_buffer*,int) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, struct v4l2_buffer *buf)
{
	const struct v4l2_event ev = {
		.type = V4L2_EVENT_EOS
	};
	struct s5p_mfc_ctx *ctx = FUNC0(priv);
	int ret;

	if (ctx->state == MFCINST_ERROR) {
		FUNC2("Call on DQBUF after unrecoverable error\n");
		return -EIO;
	}
	if (buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		ret = FUNC4(&ctx->vq_src, buf, file->f_flags & O_NONBLOCK);
	} else if (buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
		ret = FUNC4(&ctx->vq_dst, buf, file->f_flags & O_NONBLOCK);
		if (ret == 0 && ctx->state == MFCINST_FINISHED
					&& FUNC1(&ctx->vq_dst.done_list))
			FUNC3(&ctx->fh, &ev);
	} else {
		ret = -EINVAL;
	}

	return ret;
}