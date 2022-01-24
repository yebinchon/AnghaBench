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
struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {scalar_t__ src_bufs_cnt; scalar_t__ output_state; scalar_t__ state; int /*<<< orphan*/  vq_src; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MFCINST_INIT ; 
 scalar_t__ QUEUE_BUFS_REQUESTED ; 
 scalar_t__ QUEUE_FREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct s5p_mfc_dev*,struct s5p_mfc_ctx*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 

__attribute__((used)) static int FUNC7(struct s5p_mfc_dev *dev, struct s5p_mfc_ctx *ctx,
				struct v4l2_requestbuffers *reqbufs)
{
	int ret = 0;

	FUNC4();

	if (reqbufs->count == 0) {
		FUNC1(2, "Freeing buffers\n");
		ret = FUNC6(&ctx->vq_src, reqbufs);
		if (ret)
			goto out;
		ctx->src_bufs_cnt = 0;
		ctx->output_state = QUEUE_FREE;
	} else if (ctx->output_state == QUEUE_FREE) {
		/* Can only request buffers when we have a valid format set. */
		FUNC0(ctx->src_bufs_cnt != 0);
		if (ctx->state != MFCINST_INIT) {
			FUNC2("Reqbufs called in an invalid state\n");
			ret = -EINVAL;
			goto out;
		}

		FUNC1(2, "Allocating %d buffers for OUTPUT queue\n",
				reqbufs->count);
		ret = FUNC6(&ctx->vq_src, reqbufs);
		if (ret)
			goto out;

		ret = FUNC5(dev, ctx);
		if (ret) {
			reqbufs->count = 0;
			FUNC6(&ctx->vq_src, reqbufs);
			goto out;
		}

		ctx->output_state = QUEUE_BUFS_REQUESTED;
	} else {
		FUNC2("Buffers have already been requested\n");
		ret = -EINVAL;
	}
out:
	FUNC3();
	if (ret)
		FUNC2("Failed allocating buffers for OUTPUT queue\n");
	return ret;
}