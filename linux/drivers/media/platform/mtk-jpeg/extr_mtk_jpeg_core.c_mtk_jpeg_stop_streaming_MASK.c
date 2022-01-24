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
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct mtk_jpeg_src_buf {int /*<<< orphan*/  dec_param; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct mtk_jpeg_ctx {scalar_t__ state; TYPE_2__* jpeg; TYPE_1__ fh; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MTK_JPEG_INIT ; 
 scalar_t__ MTK_JPEG_RUNNING ; 
 scalar_t__ MTK_JPEG_SOURCE_CHANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 struct vb2_v4l2_buffer* FUNC1 (struct mtk_jpeg_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_jpeg_ctx*,int /*<<< orphan*/ *) ; 
 struct mtk_jpeg_src_buf* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC6 (int /*<<< orphan*/ ) ; 
 struct mtk_jpeg_ctx* FUNC7 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC8(struct vb2_queue *q)
{
	struct mtk_jpeg_ctx *ctx = FUNC7(q);
	struct vb2_v4l2_buffer *vb;

	/*
	 * STREAMOFF is an acknowledgment for source change event.
	 * Before STREAMOFF, we still have to return the old resolution and
	 * subsampling. Update capture queue when the stream is off.
	 */
	if (ctx->state == MTK_JPEG_SOURCE_CHANGE &&
	    !FUNC0(q->type)) {
		struct mtk_jpeg_src_buf *src_buf;

		vb = FUNC6(ctx->fh.m2m_ctx);
		src_buf = FUNC3(&vb->vb2_buf);
		FUNC2(ctx, &src_buf->dec_param);
		ctx->state = MTK_JPEG_RUNNING;
	} else if (FUNC0(q->type)) {
		ctx->state = MTK_JPEG_INIT;
	}

	while ((vb = FUNC1(ctx, q->type)))
		FUNC5(vb, VB2_BUF_STATE_ERROR);

	FUNC4(ctx->jpeg->dev);
}