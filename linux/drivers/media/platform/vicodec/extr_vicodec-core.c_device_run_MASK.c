#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vicodec_q_data {int /*<<< orphan*/  sequence; } ;
struct TYPE_10__ {int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  m2m_dev; } ;
struct vicodec_dev {TYPE_4__ stateful_dec; TYPE_3__ stateless_dec; TYPE_2__ stateful_enc; } ;
struct TYPE_12__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vicodec_ctx {int comp_has_next_frame; int is_draining; int has_stopped; scalar_t__ cur_buf_offset; int comp_has_frame; TYPE_6__ fh; scalar_t__ is_stateless; scalar_t__ is_enc; int /*<<< orphan*/  hdl; int /*<<< orphan*/  lock; scalar_t__ comp_magic_cnt; scalar_t__ header_size; scalar_t__ comp_size; struct vb2_v4l2_buffer* last_src_buf; struct vicodec_dev* dev; } ;
struct TYPE_7__ {struct media_request* req; } ;
struct TYPE_11__ {TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {scalar_t__ sequence; TYPE_5__ vb2_buf; int /*<<< orphan*/  flags; } ;
struct media_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_FLAG_LAST ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 scalar_t__ FUNC0 (struct vicodec_ctx*,struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*) ; 
 struct vicodec_q_data* FUNC1 (struct vicodec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct media_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC10 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vicodec_eos_event ; 

__attribute__((used)) static void FUNC13(void *priv)
{
	struct vicodec_ctx *ctx = priv;
	struct vicodec_dev *dev = ctx->dev;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	struct vicodec_q_data *q_src, *q_dst;
	u32 state;
	struct media_request *src_req;

	src_buf = FUNC10(ctx->fh.m2m_ctx);
	dst_buf = FUNC8(ctx->fh.m2m_ctx);
	src_req = src_buf->vb2_buf.req_obj.req;

	q_src = FUNC1(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
	q_dst = FUNC1(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);

	state = VB2_BUF_STATE_DONE;
	if (FUNC0(ctx, src_buf, dst_buf))
		state = VB2_BUF_STATE_ERROR;
	else
		dst_buf->sequence = q_dst->sequence++;
	dst_buf->flags &= ~V4L2_BUF_FLAG_LAST;
	FUNC6(src_buf, dst_buf, false);

	FUNC2(ctx->lock);
	if (!ctx->comp_has_next_frame && src_buf == ctx->last_src_buf) {
		dst_buf->flags |= V4L2_BUF_FLAG_LAST;
		FUNC5(&ctx->fh, &vicodec_eos_event);
		ctx->is_draining = false;
		ctx->has_stopped = true;
	}
	if (ctx->is_enc || ctx->is_stateless) {
		src_buf->sequence = q_src->sequence++;
		src_buf = FUNC11(ctx->fh.m2m_ctx);
		FUNC7(src_buf, state);
	} else if (FUNC12(&src_buf->vb2_buf, 0) == ctx->cur_buf_offset) {
		src_buf->sequence = q_src->sequence++;
		src_buf = FUNC11(ctx->fh.m2m_ctx);
		FUNC7(src_buf, state);
		ctx->cur_buf_offset = 0;
		ctx->comp_has_next_frame = false;
	}
	FUNC7(dst_buf, state);

	ctx->comp_size = 0;
	ctx->header_size = 0;
	ctx->comp_magic_cnt = 0;
	ctx->comp_has_frame = false;
	FUNC3(ctx->lock);
	if (ctx->is_stateless && src_req)
		FUNC4(src_req, &ctx->hdl);

	if (ctx->is_enc)
		FUNC9(dev->stateful_enc.m2m_dev, ctx->fh.m2m_ctx);
	else if (ctx->is_stateless)
		FUNC9(dev->stateless_dec.m2m_dev,
				    ctx->fh.m2m_ctx);
	else
		FUNC9(dev->stateful_dec.m2m_dev, ctx->fh.m2m_ctx);
}