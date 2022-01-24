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
struct file {TYPE_2__* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  vdev; } ;
struct bdisp_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  state; TYPE_1__ m2m; } ;
struct TYPE_7__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct bdisp_ctx {TYPE_2__ fh; void* dst; void* src; int /*<<< orphan*/  ctrl_handler; struct bdisp_dev* bdisp_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_M2M_OPEN ; 
 int FUNC2 (struct bdisp_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct bdisp_ctx*) ; 
 void* bdisp_dflt_fmt ; 
 scalar_t__ FUNC4 (struct bdisp_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct bdisp_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct bdisp_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct bdisp_ctx*) ; 
 struct bdisp_ctx* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct bdisp_ctx*,int /*<<< orphan*/ ) ; 
 struct bdisp_dev* FUNC18 (struct file*) ; 

__attribute__((used)) static int FUNC19(struct file *file)
{
	struct bdisp_dev *bdisp = FUNC18(file);
	struct bdisp_ctx *ctx = NULL;
	int ret;

	if (FUNC10(&bdisp->lock))
		return -ERESTARTSYS;

	/* Allocate memory for both context and node */
	ctx = FUNC9(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		ret = -ENOMEM;
		goto unlock;
	}
	ctx->bdisp_dev = bdisp;

	if (FUNC4(ctx)) {
		FUNC7(bdisp->dev, "no memory for nodes\n");
		ret = -ENOMEM;
		goto mem_ctx;
	}

	FUNC16(&ctx->fh, bdisp->m2m.vdev);

	ret = FUNC2(ctx);
	if (ret) {
		FUNC7(bdisp->dev, "Failed to create control\n");
		goto error_fh;
	}

	/* Use separate control handler per file handle */
	ctx->fh.ctrl_handler = &ctx->ctrl_handler;
	file->private_data = &ctx->fh;
	FUNC13(&ctx->fh);

	/* Default format */
	ctx->src = bdisp_dflt_fmt;
	ctx->dst = bdisp_dflt_fmt;

	/* Setup the device context for mem2mem mode. */
	ctx->fh.m2m_ctx = FUNC17(bdisp->m2m.m2m_dev, ctx,
					    queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		FUNC7(bdisp->dev, "Failed to initialize m2m context\n");
		ret = FUNC1(ctx->fh.m2m_ctx);
		goto error_ctrls;
	}

	bdisp->m2m.refcnt++;
	FUNC12(ST_M2M_OPEN, &bdisp->state);

	FUNC6(bdisp->dev, "driver opened, ctx = 0x%p\n", ctx);

	FUNC11(&bdisp->lock);

	return 0;

error_ctrls:
	FUNC3(ctx);
	FUNC14(&ctx->fh);
error_fh:
	FUNC15(&ctx->fh);
	FUNC5(ctx);
mem_ctx:
	FUNC8(ctx);
unlock:
	FUNC11(&bdisp->lock);

	return ret;
}