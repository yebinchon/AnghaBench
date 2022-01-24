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
struct vb2_buffer {size_t index; struct vb2_queue* vb2_queue; } ;
struct s5p_mfc_dev {int /*<<< orphan*/  mfc_ops; int /*<<< orphan*/  irqlock; } ;
struct s5p_mfc_ctx {int /*<<< orphan*/  dst_queue_cnt; int /*<<< orphan*/  dst_queue; int /*<<< orphan*/  dec_dst_flag; struct s5p_mfc_buf* dst_bufs; int /*<<< orphan*/  src_queue_cnt; int /*<<< orphan*/  src_queue; struct s5p_mfc_buf* src_bufs; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFC_BUF_FLAG_USED ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 struct s5p_mfc_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  try_run ; 

__attribute__((used)) static void FUNC9(struct vb2_buffer *vb)
{
	struct vb2_queue *vq = vb->vb2_queue;
	struct s5p_mfc_ctx *ctx = FUNC0(vq->drv_priv);
	struct s5p_mfc_dev *dev = ctx->dev;
	unsigned long flags;
	struct s5p_mfc_buf *mfc_buf;

	if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		mfc_buf = &ctx->src_bufs[vb->index];
		mfc_buf->flags &= ~MFC_BUF_FLAG_USED;
		FUNC7(&dev->irqlock, flags);
		FUNC1(&mfc_buf->list, &ctx->src_queue);
		ctx->src_queue_cnt++;
		FUNC8(&dev->irqlock, flags);
	} else if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
		mfc_buf = &ctx->dst_bufs[vb->index];
		mfc_buf->flags &= ~MFC_BUF_FLAG_USED;
		/* Mark destination as available for use by MFC */
		FUNC7(&dev->irqlock, flags);
		FUNC5(vb->index, &ctx->dec_dst_flag);
		FUNC1(&mfc_buf->list, &ctx->dst_queue);
		ctx->dst_queue_cnt++;
		FUNC8(&dev->irqlock, flags);
	} else {
		FUNC2("Unsupported buffer type (%d)\n", vq->type);
	}
	if (FUNC3(ctx))
		FUNC6(ctx);
	FUNC4(dev->mfc_ops, try_run, dev);
}