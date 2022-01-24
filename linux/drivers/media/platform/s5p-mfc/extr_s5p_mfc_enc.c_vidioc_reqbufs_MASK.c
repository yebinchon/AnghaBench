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
struct v4l2_requestbuffers {scalar_t__ memory; scalar_t__ type; scalar_t__ count; } ;
struct s5p_mfc_dev {int /*<<< orphan*/  mfc_ops; } ;
struct s5p_mfc_ctx {scalar_t__ capture_state; scalar_t__ output_state; scalar_t__ pb_count; int /*<<< orphan*/  vq_src; int /*<<< orphan*/  vq_dst; TYPE_1__* dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mfc_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 void* QUEUE_BUFS_REQUESTED ; 
 scalar_t__ QUEUE_FREE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 scalar_t__ V4L2_MEMORY_USERPTR ; 
 int /*<<< orphan*/  alloc_codec_buffers ; 
 struct s5p_mfc_ctx* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  release_codec_buffers ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_ctx*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 
 struct s5p_mfc_dev* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *priv,
					  struct v4l2_requestbuffers *reqbufs)
{
	struct s5p_mfc_dev *dev = FUNC6(file);
	struct s5p_mfc_ctx *ctx = FUNC1(priv);
	int ret = 0;

	/* if memory is not mmp or userptr return error */
	if ((reqbufs->memory != V4L2_MEMORY_MMAP) &&
		(reqbufs->memory != V4L2_MEMORY_USERPTR))
		return -EINVAL;
	if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
		if (reqbufs->count == 0) {
			FUNC2(2, "Freeing buffers\n");
			ret = FUNC5(&ctx->vq_dst, reqbufs);
			FUNC4(dev->mfc_ops, release_codec_buffers,
					ctx);
			ctx->capture_state = QUEUE_FREE;
			return ret;
		}
		if (ctx->capture_state != QUEUE_FREE) {
			FUNC3("invalid capture state: %d\n",
							ctx->capture_state);
			return -EINVAL;
		}
		ret = FUNC5(&ctx->vq_dst, reqbufs);
		if (ret != 0) {
			FUNC3("error in vb2_reqbufs() for E(D)\n");
			return ret;
		}
		ctx->capture_state = QUEUE_BUFS_REQUESTED;

		ret = FUNC4(ctx->dev->mfc_ops,
				alloc_codec_buffers, ctx);
		if (ret) {
			FUNC3("Failed to allocate encoding buffers\n");
			reqbufs->count = 0;
			ret = FUNC5(&ctx->vq_dst, reqbufs);
			return -ENOMEM;
		}
	} else if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		if (reqbufs->count == 0) {
			FUNC2(2, "Freeing buffers\n");
			ret = FUNC5(&ctx->vq_src, reqbufs);
			FUNC4(dev->mfc_ops, release_codec_buffers,
					ctx);
			ctx->output_state = QUEUE_FREE;
			return ret;
		}
		if (ctx->output_state != QUEUE_FREE) {
			FUNC3("invalid output state: %d\n",
							ctx->output_state);
			return -EINVAL;
		}

		if (FUNC0(dev)) {
			/* Check for min encoder buffers */
			if (ctx->pb_count &&
				(reqbufs->count < ctx->pb_count)) {
				reqbufs->count = ctx->pb_count;
				FUNC2(2, "Minimum %d output buffers needed\n",
						ctx->pb_count);
			} else {
				ctx->pb_count = reqbufs->count;
			}
		}

		ret = FUNC5(&ctx->vq_src, reqbufs);
		if (ret != 0) {
			FUNC3("error in vb2_reqbufs() for E(S)\n");
			return ret;
		}
		ctx->output_state = QUEUE_BUFS_REQUESTED;
	} else {
		FUNC3("invalid buf type\n");
		return -EINVAL;
	}
	return ret;
}