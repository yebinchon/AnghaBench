#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_7__ {int num_planes; } ;
struct vb2_v4l2_buffer {TYPE_3__ vb2_buf; } ;
struct TYPE_5__ {int /*<<< orphan*/ * comp_size; } ;
struct mtk_jpeg_src_buf {TYPE_1__ dec_param; } ;
struct mtk_jpeg_dev {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  dev; int /*<<< orphan*/  dec_reg_base; int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct mtk_jpeg_ctx {TYPE_2__ fh; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MTK_JPEG_DEC_RESULT_EOF_DONE ; 
 scalar_t__ MTK_JPEG_DEC_RESULT_UNDERFLOW ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mtk_jpeg_src_buf* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC7 (int /*<<< orphan*/ ) ; 
 struct mtk_jpeg_ctx* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *priv)
{
	struct mtk_jpeg_dev *jpeg = priv;
	struct mtk_jpeg_ctx *ctx;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	struct mtk_jpeg_src_buf *jpeg_src_buf;
	enum vb2_buffer_state buf_state = VB2_BUF_STATE_ERROR;
	u32	dec_irq_ret;
	u32 dec_ret;
	int i;

	dec_ret = FUNC2(jpeg->dec_reg_base);
	dec_irq_ret = FUNC1(dec_ret);
	ctx = FUNC8(jpeg->m2m_dev);
	if (!ctx) {
		FUNC5(&jpeg->v4l2_dev, "Context is NULL\n");
		return IRQ_HANDLED;
	}

	src_buf = FUNC10(ctx->fh.m2m_ctx);
	dst_buf = FUNC7(ctx->fh.m2m_ctx);
	jpeg_src_buf = FUNC4(&src_buf->vb2_buf);

	if (dec_irq_ret >= MTK_JPEG_DEC_RESULT_UNDERFLOW)
		FUNC3(jpeg->dec_reg_base);

	if (dec_irq_ret != MTK_JPEG_DEC_RESULT_EOF_DONE) {
		FUNC0(jpeg->dev, "decode failed\n");
		goto dec_end;
	}

	for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
		FUNC11(&dst_buf->vb2_buf, i,
				      jpeg_src_buf->dec_param.comp_size[i]);

	buf_state = VB2_BUF_STATE_DONE;

dec_end:
	FUNC6(src_buf, buf_state);
	FUNC6(dst_buf, buf_state);
	FUNC9(jpeg->m2m_dev, ctx->fh.m2m_ctx);
	return IRQ_HANDLED;
}