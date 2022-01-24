#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct fdp1_job {TYPE_2__* dst; struct fdp1_field_buffer* active; struct fdp1_field_buffer* previous; } ;
struct fdp1_field_buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fdp1_ctx {TYPE_3__* fdp1; struct fdp1_field_buffer* previous; int /*<<< orphan*/  deint_mode; int /*<<< orphan*/  fields_queue; int /*<<< orphan*/ * smsk_cpu; scalar_t__* smsk_addr; int /*<<< orphan*/  smsk_size; TYPE_1__ fh; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw_job_list; int /*<<< orphan*/  queued_job_list; int /*<<< orphan*/  dev; int /*<<< orphan*/  irqlock; } ;
struct TYPE_5__ {struct vb2_v4l2_buffer* vb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct fdp1_field_buffer* FUNC4 (struct fdp1_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct fdp1_ctx*,struct fdp1_field_buffer*) ; 
 struct fdp1_job* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC11 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC12 (int /*<<< orphan*/ ) ; 
 struct fdp1_ctx* FUNC13 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC14(struct vb2_queue *q)
{
	struct fdp1_ctx *ctx = FUNC13(q);
	struct vb2_v4l2_buffer *vbuf;
	unsigned long flags;

	while (1) {
		if (FUNC1(q->type))
			vbuf = FUNC12(ctx->fh.m2m_ctx);
		else
			vbuf = FUNC11(ctx->fh.m2m_ctx);
		if (vbuf == NULL)
			break;
		FUNC8(&ctx->fdp1->irqlock, flags);
		FUNC10(vbuf, VB2_BUF_STATE_ERROR);
		FUNC9(&ctx->fdp1->irqlock, flags);
	}

	/* Empty Output queues */
	if (FUNC1(q->type)) {
		/* Empty our internal queues */
		struct fdp1_field_buffer *fbuf;

		/* Free any queued buffers */
		fbuf = FUNC4(ctx);
		while (fbuf != NULL) {
			FUNC5(ctx, fbuf);
			fbuf = FUNC4(ctx);
		}

		/* Free smsk_data */
		if (ctx->smsk_cpu) {
			FUNC3(ctx->fdp1->dev, ctx->smsk_size,
					  ctx->smsk_cpu, ctx->smsk_addr[0]);
			ctx->smsk_addr[0] = ctx->smsk_addr[1] = 0;
			ctx->smsk_cpu = NULL;
		}

		FUNC2(!FUNC7(&ctx->fields_queue),
		     "Buffer queue not empty");
	} else {
		/* Empty Capture queues (Jobs) */
		struct fdp1_job *job;

		job = FUNC6(ctx->fdp1);
		while (job) {
			if (FUNC0(ctx->deint_mode))
				FUNC5(ctx, job->previous);
			else
				FUNC5(ctx, job->active);

			FUNC10(job->dst->vb, VB2_BUF_STATE_ERROR);
			job->dst = NULL;

			job = FUNC6(ctx->fdp1);
		}

		/* Free any held buffer in the ctx */
		FUNC5(ctx, ctx->previous);

		FUNC2(!FUNC7(&ctx->fdp1->queued_job_list),
		     "Queued Job List not empty");

		FUNC2(!FUNC7(&ctx->fdp1->hw_job_list),
		     "HW Job list not empty");
	}
}