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
struct vb2_queue {scalar_t__ type; int /*<<< orphan*/  drv_priv; } ;
struct s5p_mfc_dev {scalar_t__ curr_ctx; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  mfc_ops; scalar_t__ hw_lock; } ;
struct s5p_mfc_ctx {scalar_t__ state; scalar_t__ num; int dpb_flush_flag; scalar_t__ src_queue_cnt; int /*<<< orphan*/  src_queue; int /*<<< orphan*/  vq_src; scalar_t__ dec_dst_flag; scalar_t__ dst_queue_cnt; int /*<<< orphan*/  dst_queue; int /*<<< orphan*/  vq_dst; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct s5p_mfc_dev*) ; 
 scalar_t__ MFCINST_ABORT ; 
 scalar_t__ MFCINST_FINISHING ; 
 scalar_t__ MFCINST_FLUSH ; 
 scalar_t__ MFCINST_RUNNING ; 
 int /*<<< orphan*/  S5P_MFC_R2H_CMD_DPB_FLUSH_RET ; 
 int /*<<< orphan*/  S5P_MFC_R2H_CMD_FRAME_DONE_RET ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 struct s5p_mfc_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC6 (struct s5p_mfc_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  try_run ; 

__attribute__((used)) static void FUNC10(struct vb2_queue *q)
{
	unsigned long flags;
	struct s5p_mfc_ctx *ctx = FUNC2(q->drv_priv);
	struct s5p_mfc_dev *dev = ctx->dev;
	int aborted = 0;

	FUNC8(&dev->irqlock, flags);
	if ((ctx->state == MFCINST_FINISHING ||
		ctx->state ==  MFCINST_RUNNING) &&
		dev->curr_ctx == ctx->num && dev->hw_lock) {
		ctx->state = MFCINST_ABORT;
		FUNC9(&dev->irqlock, flags);
		FUNC6(ctx,
					S5P_MFC_R2H_CMD_FRAME_DONE_RET, 0);
		aborted = 1;
		FUNC8(&dev->irqlock, flags);
	}
	if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
		FUNC4(&ctx->dst_queue, &ctx->vq_dst);
		FUNC0(&ctx->dst_queue);
		ctx->dst_queue_cnt = 0;
		ctx->dpb_flush_flag = 1;
		ctx->dec_dst_flag = 0;
		if (FUNC1(dev) && (ctx->state == MFCINST_RUNNING)) {
			ctx->state = MFCINST_FLUSH;
			FUNC7(ctx);
			FUNC5(dev->mfc_ops, try_run, dev);
			FUNC9(&dev->irqlock, flags);
			if (FUNC6(ctx,
				S5P_MFC_R2H_CMD_DPB_FLUSH_RET, 0))
				FUNC3("Err flushing buffers\n");
			FUNC8(&dev->irqlock, flags);
		}
	} else if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		FUNC4(&ctx->src_queue, &ctx->vq_src);
		FUNC0(&ctx->src_queue);
		ctx->src_queue_cnt = 0;
	}
	if (aborted)
		ctx->state = MFCINST_RUNNING;
	FUNC9(&dev->irqlock, flags);
}