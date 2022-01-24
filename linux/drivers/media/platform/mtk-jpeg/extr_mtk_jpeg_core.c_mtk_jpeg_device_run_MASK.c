#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int num_planes; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct mtk_jpeg_src_buf {int flags; int /*<<< orphan*/  dec_param; } ;
struct mtk_jpeg_fb {int dummy; } ;
struct mtk_jpeg_dev {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  dec_reg_base; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct mtk_jpeg_ctx {TYPE_1__ fh; int /*<<< orphan*/  state; struct mtk_jpeg_dev* jpeg; } ;
struct mtk_jpeg_bs {int dummy; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 int MTK_JPEG_BUF_FLAGS_LAST_FRAME ; 
 int /*<<< orphan*/  MTK_JPEG_SOURCE_CHANGE ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
 scalar_t__ FUNC0 (struct mtk_jpeg_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mtk_jpeg_bs*,struct mtk_jpeg_fb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_jpeg_ctx*) ; 
 scalar_t__ FUNC5 (struct mtk_jpeg_ctx*,int /*<<< orphan*/ *,TYPE_2__*,struct mtk_jpeg_fb*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_jpeg_ctx*,TYPE_2__*,struct mtk_jpeg_bs*) ; 
 struct mtk_jpeg_src_buf* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct vb2_v4l2_buffer*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC13 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(void *priv)
{
	struct mtk_jpeg_ctx *ctx = priv;
	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	enum vb2_buffer_state buf_state = VB2_BUF_STATE_ERROR;
	unsigned long flags;
	struct mtk_jpeg_src_buf *jpeg_src_buf;
	struct mtk_jpeg_bs bs;
	struct mtk_jpeg_fb fb;
	int i;

	src_buf = FUNC14(ctx->fh.m2m_ctx);
	dst_buf = FUNC13(ctx->fh.m2m_ctx);
	jpeg_src_buf = FUNC7(&src_buf->vb2_buf);

	if (jpeg_src_buf->flags & MTK_JPEG_BUF_FLAGS_LAST_FRAME) {
		for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
			FUNC16(&dst_buf->vb2_buf, i, 0);
		buf_state = VB2_BUF_STATE_DONE;
		goto dec_end;
	}

	if (FUNC0(ctx, &jpeg_src_buf->dec_param)) {
		FUNC4(ctx);
		ctx->state = MTK_JPEG_SOURCE_CHANGE;
		FUNC12(jpeg->m2m_dev, ctx->fh.m2m_ctx);
		return;
	}

	FUNC6(ctx, &src_buf->vb2_buf, &bs);
	if (FUNC5(ctx, &jpeg_src_buf->dec_param, &dst_buf->vb2_buf, &fb))
		goto dec_end;

	FUNC8(&jpeg->hw_lock, flags);
	FUNC1(jpeg->dec_reg_base);
	FUNC2(jpeg->dec_reg_base,
				&jpeg_src_buf->dec_param, &bs, &fb);

	FUNC3(jpeg->dec_reg_base);
	FUNC9(&jpeg->hw_lock, flags);
	return;

dec_end:
	FUNC15(ctx->fh.m2m_ctx);
	FUNC11(ctx->fh.m2m_ctx);
	FUNC10(src_buf, buf_state);
	FUNC10(dst_buf, buf_state);
	FUNC12(jpeg->m2m_dev, ctx->fh.m2m_ctx);
}