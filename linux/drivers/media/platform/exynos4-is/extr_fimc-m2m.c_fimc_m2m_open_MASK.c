#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  vfd; } ;
struct fimc_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_5__ m2m; } ;
struct TYPE_15__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct TYPE_13__ {int enabled; } ;
struct TYPE_12__ {int /*<<< orphan*/  handler; } ;
struct TYPE_11__ {void* fmt; } ;
struct TYPE_10__ {void* fmt; } ;
struct fimc_ctx {TYPE_6__ fh; TYPE_4__ scaler; void* out_path; void* in_path; scalar_t__ flags; int /*<<< orphan*/  state; TYPE_3__ ctrls; TYPE_2__ d_frame; TYPE_1__ s_frame; struct fimc_dev* fimc_dev; } ;
struct file {TYPE_6__* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FIMC_CTX_M2M ; 
 void* FIMC_IO_DMA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_CAPT_BUSY ; 
 int /*<<< orphan*/  ST_M2M_RUN ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_ctx*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_ctx*) ; 
 struct fimc_ctx* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct fimc_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct fimc_dev* FUNC20 (struct file*) ; 

__attribute__((used)) static int FUNC21(struct file *file)
{
	struct fimc_dev *fimc = FUNC20(file);
	struct fimc_ctx *ctx;
	int ret = -EBUSY;

	FUNC10("pid: %d, state: %#lx\n", FUNC12(current), fimc->state);

	if (FUNC8(&fimc->lock))
		return -ERESTARTSYS;
	/*
	 * Don't allow simultaneous open() of the mem-to-mem and the
	 * capture video node that belong to same FIMC IP instance.
	 */
	if (FUNC13(ST_CAPT_BUSY, &fimc->state))
		goto unlock;

	ctx = FUNC7(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		ret = -ENOMEM;
		goto unlock;
	}
	FUNC17(&ctx->fh, &fimc->m2m.vfd);
	ctx->fimc_dev = fimc;

	/* Default color format */
	ctx->s_frame.fmt = FUNC4(0);
	ctx->d_frame.fmt = FUNC4(0);

	ret = FUNC2(ctx);
	if (ret)
		goto error_fh;

	/* Use separate control handler per file handle */
	ctx->fh.ctrl_handler = &ctx->ctrls.handler;
	file->private_data = &ctx->fh;
	FUNC14(&ctx->fh);

	/* Setup the device context for memory-to-memory mode */
	ctx->state = FIMC_CTX_M2M;
	ctx->flags = 0;
	ctx->in_path = FIMC_IO_DMA;
	ctx->out_path = FIMC_IO_DMA;
	ctx->scaler.enabled = 1;

	ctx->fh.m2m_ctx = FUNC18(fimc->m2m.m2m_dev, ctx, queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		goto error_c;
	}

	if (fimc->m2m.refcnt++ == 0)
		FUNC11(ST_M2M_RUN, &fimc->state);

	ret = FUNC5(ctx);
	if (ret < 0)
		goto error_m2m_ctx;

	FUNC9(&fimc->lock);
	return 0;

error_m2m_ctx:
	FUNC19(ctx->fh.m2m_ctx);
error_c:
	FUNC3(ctx);
	FUNC15(&ctx->fh);
error_fh:
	FUNC16(&ctx->fh);
	FUNC6(ctx);
unlock:
	FUNC9(&fimc->lock);
	return ret;
}