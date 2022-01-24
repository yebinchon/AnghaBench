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
struct v4l2_requestbuffers {scalar_t__ count; } ;
struct s5p_mfc_dev {scalar_t__ dst_bufs_cnt; scalar_t__ capture_state; scalar_t__ total_dpb_count; int /*<<< orphan*/  mfc_ops; int /*<<< orphan*/  vq_dst; } ;
struct s5p_mfc_ctx {scalar_t__ dst_bufs_cnt; scalar_t__ capture_state; scalar_t__ total_dpb_count; int /*<<< orphan*/  mfc_ops; int /*<<< orphan*/  vq_dst; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ QUEUE_BUFS_MMAPED ; 
 scalar_t__ QUEUE_BUFS_REQUESTED ; 
 scalar_t__ QUEUE_FREE ; 
 int /*<<< orphan*/  S5P_MFC_R2H_CMD_INIT_BUFFERS_RET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_codec_buffers ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  release_codec_buffers ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct s5p_mfc_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  try_run ; 
 int FUNC9 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 

__attribute__((used)) static int FUNC10(struct s5p_mfc_dev *dev, struct s5p_mfc_ctx *ctx,
				struct v4l2_requestbuffers *reqbufs)
{
	int ret = 0;

	FUNC4();

	if (reqbufs->count == 0) {
		FUNC1(2, "Freeing buffers\n");
		ret = FUNC9(&ctx->vq_dst, reqbufs);
		if (ret)
			goto out;
		FUNC6(dev->mfc_ops, release_codec_buffers, ctx);
		ctx->dst_bufs_cnt = 0;
	} else if (ctx->capture_state == QUEUE_FREE) {
		FUNC0(ctx->dst_bufs_cnt != 0);
		FUNC1(2, "Allocating %d buffers for CAPTURE queue\n",
				reqbufs->count);
		ret = FUNC9(&ctx->vq_dst, reqbufs);
		if (ret)
			goto out;

		ctx->capture_state = QUEUE_BUFS_REQUESTED;
		ctx->total_dpb_count = reqbufs->count;

		ret = FUNC6(dev->mfc_ops, alloc_codec_buffers, ctx);
		if (ret) {
			FUNC2("Failed to allocate decoding buffers\n");
			reqbufs->count = 0;
			FUNC9(&ctx->vq_dst, reqbufs);
			ret = -ENOMEM;
			ctx->capture_state = QUEUE_FREE;
			goto out;
		}

		FUNC0(ctx->dst_bufs_cnt != ctx->total_dpb_count);
		ctx->capture_state = QUEUE_BUFS_MMAPED;

		if (FUNC5(ctx))
			FUNC8(ctx);
		FUNC6(dev->mfc_ops, try_run, dev);
		FUNC7(ctx, S5P_MFC_R2H_CMD_INIT_BUFFERS_RET,
					  0);
	} else {
		FUNC2("Buffers have already been requested\n");
		ret = -EINVAL;
	}
out:
	FUNC3();
	if (ret)
		FUNC2("Failed allocating buffers for CAPTURE queue\n");
	return ret;
}