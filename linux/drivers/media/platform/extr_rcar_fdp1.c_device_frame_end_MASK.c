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
struct fdp1_job {TYPE_1__* dst; int /*<<< orphan*/  active; int /*<<< orphan*/  previous; } ;
struct fdp1_dev {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fdp1_ctx {scalar_t__ num_processed; scalar_t__ translen; TYPE_2__ fh; struct fdp1_dev* fdp1; scalar_t__ aborting; int /*<<< orphan*/  deint_mode; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_3__ {int /*<<< orphan*/  vb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fdp1_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct fdp1_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct fdp1_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fdp1_dev*,struct fdp1_job*) ; 
 struct fdp1_job* FUNC5 (struct fdp1_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct fdp1_ctx* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct fdp1_dev *fdp1,
			     enum vb2_buffer_state state)
{
	struct fdp1_ctx *ctx;
	unsigned long flags;
	struct fdp1_job *job = FUNC5(fdp1);

	FUNC1(fdp1, "+\n");

	ctx = FUNC10(fdp1->m2m_dev);

	if (ctx == NULL) {
		FUNC8(&fdp1->v4l2_dev,
			"Instance released before the end of transaction\n");
		return;
	}

	ctx->num_processed++;

	/*
	 * fdp1_field_complete will call buf_done only when the last vb2_buffer
	 * reference is complete
	 */
	if (FUNC0(ctx->deint_mode))
		FUNC3(ctx, job->previous);
	else
		FUNC3(ctx, job->active);

	FUNC6(&fdp1->irqlock, flags);
	FUNC9(job->dst->vb, state);
	job->dst = NULL;
	FUNC7(&fdp1->irqlock, flags);

	/* Move this job back to the free job list */
	FUNC4(fdp1, job);

	FUNC1(fdp1, "curr_ctx->num_processed %d curr_ctx->translen %d\n",
		ctx->num_processed, ctx->translen);

	if (ctx->num_processed == ctx->translen ||
			ctx->aborting) {
		FUNC1(ctx->fdp1, "Finishing transaction\n");
		ctx->num_processed = 0;
		FUNC11(fdp1->m2m_dev, ctx->fh.m2m_ctx);
	} else {
		/*
		 * For pipelined performance support, this would
		 * be called from a VINT handler
		 */
		FUNC2(ctx);
	}
}