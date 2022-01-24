#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct vb2_queue {int dummy; } ;
struct vb2_buffer {TYPE_2__* vb2_queue; int /*<<< orphan*/  index; } ;
struct mtk_jpeg_dec_param {int dummy; } ;
struct mtk_jpeg_src_buf {int flags; struct mtk_jpeg_dec_param dec_param; } ;
struct mtk_jpeg_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct mtk_jpeg_ctx {scalar_t__ state; TYPE_1__ fh; struct mtk_jpeg_dev* jpeg; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int MTK_JPEG_BUF_FLAGS_LAST_FRAME ; 
 scalar_t__ MTK_JPEG_INIT ; 
 scalar_t__ MTK_JPEG_RUNNING ; 
 scalar_t__ MTK_JPEG_SOURCE_CHANGE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_jpeg_dec_param*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mtk_jpeg_dec_param*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_jpeg_ctx*,struct mtk_jpeg_dec_param*) ; 
 struct mtk_jpeg_src_buf* FUNC4 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_queue* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 struct mtk_jpeg_ctx* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct vb2_queue*) ; 
 scalar_t__ FUNC14 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct vb2_buffer *vb)
{
	struct mtk_jpeg_ctx *ctx = FUNC11(vb->vb2_queue);
	struct mtk_jpeg_dec_param *param;
	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
	struct mtk_jpeg_src_buf *jpeg_src_buf;
	bool header_valid;

	FUNC6(2, debug, &jpeg->v4l2_dev, "(%d) buf_q id=%d, vb=%p\n",
		 vb->vb2_queue->type, vb->index, vb);

	if (vb->vb2_queue->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		goto end;

	jpeg_src_buf = FUNC4(vb);
	param = &jpeg_src_buf->dec_param;
	FUNC0(param, 0, sizeof(*param));

	if (jpeg_src_buf->flags & MTK_JPEG_BUF_FLAGS_LAST_FRAME) {
		FUNC6(1, debug, &jpeg->v4l2_dev, "Got eos\n");
		goto end;
	}
	header_valid = FUNC1(param, (u8 *)FUNC14(vb, 0),
				      FUNC12(vb, 0));
	if (!header_valid) {
		FUNC7(&jpeg->v4l2_dev, "Header invalid.\n");
		FUNC10(vb, VB2_BUF_STATE_ERROR);
		return;
	}

	if (ctx->state == MTK_JPEG_INIT) {
		struct vb2_queue *dst_vq = FUNC9(
			ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);

		FUNC2(ctx);
		FUNC3(ctx, param);
		ctx->state = FUNC13(dst_vq) ?
				MTK_JPEG_SOURCE_CHANGE : MTK_JPEG_RUNNING;
	}
end:
	FUNC8(ctx->fh.m2m_ctx, FUNC5(vb));
}