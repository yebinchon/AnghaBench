#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct vb2_queue {scalar_t__ type; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct coda_q_data {scalar_t__ fourcc; } ;
struct TYPE_10__ {int /*<<< orphan*/  m2m_ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  h264_level_idc; int /*<<< orphan*/  h264_profile_idc; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct coda_ctx {scalar_t__ inst_type; TYPE_5__ fh; int /*<<< orphan*/  qsequence; scalar_t__ initialized; int /*<<< orphan*/  seq_init_work; TYPE_4__* dev; TYPE_3__* ops; int /*<<< orphan*/  bitstream_mutex; TYPE_2__ params; TYPE_1__ bitstream; } ;
struct TYPE_9__ {int /*<<< orphan*/  workqueue; } ;
struct TYPE_8__ {scalar_t__ seq_init_work; } ;

/* Variables and functions */
 scalar_t__ CODA_INST_ENCODER ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_PIX_FMT_H264 ; 
 int /*<<< orphan*/  FUNC0 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct coda_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct coda_ctx*,struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct coda_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct coda_q_data* FUNC6 (struct coda_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC10 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct vb2_v4l2_buffer*) ; 
 struct coda_ctx* FUNC12 (struct vb2_queue*) ; 
 scalar_t__ FUNC13 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC15(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC10(vb);
	struct coda_ctx *ctx = FUNC12(vb->vb2_queue);
	struct vb2_queue *vq = vb->vb2_queue;
	struct coda_q_data *q_data;

	q_data = FUNC6(ctx, vb->vb2_queue->type);

	/*
	 * In the decoder case, immediately try to copy the buffer into the
	 * bitstream ringbuffer and mark it as ready to be dequeued.
	 */
	if (ctx->bitstream.size && vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
		/*
		 * For backwards compatibility, queuing an empty buffer marks
		 * the stream end
		 */
		if (FUNC13(vb, 0) == 0)
			FUNC0(ctx);

		if (q_data->fourcc == V4L2_PIX_FMT_H264) {
			/*
			 * Unless already done, try to obtain profile_idc and
			 * level_idc from the SPS header. This allows to decide
			 * whether to enable reordering during sequence
			 * initialization.
			 */
			if (!ctx->params.h264_profile_idc) {
				FUNC3(ctx, vb);
				FUNC4(ctx,
						ctx->params.h264_profile_idc,
						ctx->params.h264_level_idc);
			}
		}

		FUNC7(&ctx->bitstream_mutex);
		FUNC11(ctx->fh.m2m_ctx, vbuf);
		if (FUNC14(vb->vb2_queue))
			/* This set buf->sequence = ctx->qsequence++ */
			FUNC1(ctx, NULL);
		FUNC8(&ctx->bitstream_mutex);

		if (!ctx->initialized) {
			/*
			 * Run sequence initialization in case the queued
			 * buffer contained headers.
			 */
			if (FUNC14(vb->vb2_queue) &&
			    ctx->ops->seq_init_work) {
				FUNC9(ctx->dev->workqueue,
					   &ctx->seq_init_work);
				FUNC5(&ctx->seq_init_work);
			}

			if (ctx->initialized)
				FUNC2(ctx);
		}
	} else {
		if (ctx->inst_type == CODA_INST_ENCODER &&
		    vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
			vbuf->sequence = ctx->qsequence++;
		FUNC11(ctx->fh.m2m_ctx, vbuf);
	}
}