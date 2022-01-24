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
struct TYPE_6__ {TYPE_2__* planes; } ;
struct v4l2_buffer {scalar_t__ memory; int length; TYPE_3__ m; int /*<<< orphan*/  type; } ;
struct s5p_mfc_ctx {scalar_t__ state; int /*<<< orphan*/  vq_dst; int /*<<< orphan*/  vq_src; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mem_offset; } ;
struct TYPE_5__ {TYPE_1__ m; } ;

/* Variables and functions */
 scalar_t__ DST_QUEUE_OFF_BASE ; 
 int EINVAL ; 
 scalar_t__ MFCINST_GOT_INST ; 
 scalar_t__ MFCINST_RUNNING ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 struct s5p_mfc_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
						   struct v4l2_buffer *buf)
{
	struct s5p_mfc_ctx *ctx = FUNC0(priv);
	int ret;
	int i;

	if (buf->memory != V4L2_MEMORY_MMAP) {
		FUNC3("Only mmapped buffers can be used\n");
		return -EINVAL;
	}
	FUNC1(2, "State: %d, buf->type: %d\n", ctx->state, buf->type);
	if (ctx->state == MFCINST_GOT_INST &&
			buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		ret = FUNC4(&ctx->vq_src, buf);
	} else if (ctx->state == MFCINST_RUNNING &&
			buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
		ret = FUNC4(&ctx->vq_dst, buf);
		for (i = 0; i < buf->length; i++)
			buf->m.planes[i].m.mem_offset += DST_QUEUE_OFF_BASE;
	} else {
		FUNC3("vidioc_querybuf called in an inappropriate state\n");
		ret = -EINVAL;
	}
	FUNC2();
	return ret;
}