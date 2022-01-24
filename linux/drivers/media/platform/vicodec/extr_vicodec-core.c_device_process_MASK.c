#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct vicodec_q_data {int sizeimage; int /*<<< orphan*/  info; } ;
struct vicodec_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  size; } ;
struct TYPE_7__ {int /*<<< orphan*/ * buf; } ;
struct v4l2_fwht_state {TYPE_4__ header; int /*<<< orphan*/  info; TYPE_3__ ref_frame; int /*<<< orphan*/  ref_frame_ts; int /*<<< orphan*/ * compressed_frame; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vicodec_ctx {unsigned int comp_max_size; struct v4l2_fwht_state state; scalar_t__ is_stateless; scalar_t__ is_enc; TYPE_2__ fh; int /*<<< orphan*/  hdl; struct vicodec_dev* dev; } ;
struct TYPE_5__ {struct media_request* req; } ;
struct vb2_buffer {scalar_t__ state; TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  flags; struct vb2_buffer vb2_buf; } ;
struct vb2_queue {struct vb2_buffer** bufs; } ;
struct media_request {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int FWHT_FL_I_FRAME ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_KEYFRAME ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_PFRAME ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_fwht_state*) ; 
 struct vicodec_q_data* FUNC1 (struct vicodec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vicodec_ctx*) ; 
 int FUNC5 (struct media_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (struct v4l2_fwht_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct v4l2_fwht_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vb2_queue* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vb2_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vb2_buffer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct vicodec_ctx *ctx,
			  struct vb2_v4l2_buffer *src_vb,
			  struct vb2_v4l2_buffer *dst_vb)
{
	struct vicodec_dev *dev = ctx->dev;
	struct v4l2_fwht_state *state = &ctx->state;
	u8 *p_src, *p_dst;
	int ret = 0;

	if (ctx->is_enc || ctx->is_stateless)
		p_src = FUNC12(&src_vb->vb2_buf, 0);
	else
		p_src = state->compressed_frame;

	if (ctx->is_stateless) {
		struct media_request *src_req = src_vb->vb2_buf.req_obj.req;

		ret = FUNC5(src_req, &ctx->hdl);
		if (ret)
			return ret;
		FUNC4(ctx);

		ctx->state.header.size =
			FUNC2(FUNC11(&src_vb->vb2_buf, 0));
		/*
		 * set the reference buffer from the reference timestamp
		 * only if this is a P-frame
		 */
		if (!(FUNC3(ctx->state.header.flags) & FWHT_FL_I_FRAME)) {
			struct vb2_buffer *ref_vb2_buf;
			int ref_buf_idx;
			struct vb2_queue *vq_cap =
				FUNC9(ctx->fh.m2m_ctx,
						V4L2_BUF_TYPE_VIDEO_CAPTURE);

			ref_buf_idx = FUNC10(vq_cap,
							 ctx->state.ref_frame_ts, 0);
			if (ref_buf_idx < 0)
				return -EINVAL;

			ref_vb2_buf = vq_cap->bufs[ref_buf_idx];
			if (ref_vb2_buf->state == VB2_BUF_STATE_ERROR)
				ret = -EINVAL;
			ctx->state.ref_frame.buf =
				FUNC12(ref_vb2_buf, 0);
		} else {
			ctx->state.ref_frame.buf = NULL;
		}
	}
	p_dst = FUNC12(&dst_vb->vb2_buf, 0);
	if (!p_src || !p_dst) {
		FUNC6(&dev->v4l2_dev,
			 "Acquiring kernel pointers to buffers failed\n");
		return -EFAULT;
	}

	if (ctx->is_enc) {
		struct vicodec_q_data *q_src;
		int comp_sz_or_errcode;

		q_src = FUNC1(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
		state->info = q_src->info;
		comp_sz_or_errcode = FUNC8(state, p_src, p_dst);
		if (comp_sz_or_errcode < 0)
			return comp_sz_or_errcode;
		FUNC13(&dst_vb->vb2_buf, 0, comp_sz_or_errcode);
	} else {
		struct vicodec_q_data *q_dst;
		unsigned int comp_frame_size = FUNC3(ctx->state.header.size);

		q_dst = FUNC1(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
		if (comp_frame_size > ctx->comp_max_size)
			return -EINVAL;
		state->info = q_dst->info;
		ret = FUNC7(state, p_src, p_dst);
		if (ret < 0)
			return ret;
		if (!ctx->is_stateless)
			FUNC0(p_dst, ctx->state.info, &ctx->state);

		FUNC13(&dst_vb->vb2_buf, 0, q_dst->sizeimage);
		if (FUNC3(ctx->state.header.flags) & FWHT_FL_I_FRAME)
			dst_vb->flags |= V4L2_BUF_FLAG_KEYFRAME;
		else
			dst_vb->flags |= V4L2_BUF_FLAG_PFRAME;
	}
	return ret;
}