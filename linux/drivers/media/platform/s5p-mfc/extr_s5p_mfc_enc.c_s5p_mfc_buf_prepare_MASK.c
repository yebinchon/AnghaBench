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
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct s5p_mfc_ctx {scalar_t__ enc_dst_buf_size; scalar_t__ luma_size; scalar_t__ chroma_size; int /*<<< orphan*/  src_fmt; int /*<<< orphan*/  dst_fmt; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct vb2_buffer*) ; 
 struct s5p_mfc_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (struct vb2_buffer*,int) ; 

__attribute__((used)) static int FUNC5(struct vb2_buffer *vb)
{
	struct vb2_queue *vq = vb->vb2_queue;
	struct s5p_mfc_ctx *ctx = FUNC1(vq->drv_priv);
	int ret;

	if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
		ret = FUNC0(ctx->dst_fmt, vb);
		if (ret < 0)
			return ret;
		FUNC2(2, "plane size: %ld, dst size: %zu\n",
			FUNC4(vb, 0), ctx->enc_dst_buf_size);
		if (FUNC4(vb, 0) < ctx->enc_dst_buf_size) {
			FUNC3("plane size is too small for capture\n");
			return -EINVAL;
		}
	} else if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		ret = FUNC0(ctx->src_fmt, vb);
		if (ret < 0)
			return ret;
		FUNC2(2, "plane size: %ld, luma size: %d\n",
			FUNC4(vb, 0), ctx->luma_size);
		FUNC2(2, "plane size: %ld, chroma size: %d\n",
			FUNC4(vb, 1), ctx->chroma_size);
		if (FUNC4(vb, 0) < ctx->luma_size ||
		    FUNC4(vb, 1) < ctx->chroma_size) {
			FUNC3("plane size is too small for output\n");
			return -EINVAL;
		}
	} else {
		FUNC3("invalid queue type: %d\n", vq->type);
		return -EINVAL;
	}
	return 0;
}