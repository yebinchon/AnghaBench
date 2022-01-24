#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_1__* private_data; } ;
struct delta_dev {int instance_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ clk_flash_promip; scalar_t__ clk_st231; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct delta_ctx {TYPE_1__ fh; int /*<<< orphan*/  name; int /*<<< orphan*/  dts; int /*<<< orphan*/  state; int /*<<< orphan*/  lock; int /*<<< orphan*/  run_work; struct delta_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELTA_PREFIX ; 
 int /*<<< orphan*/  DELTA_STATE_WF_FORMAT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  delta_run_work ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct delta_ctx*) ; 
 struct delta_ctx* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC13 (struct delta_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct delta_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct file*) ; 
 struct delta_dev* FUNC21 (struct file*) ; 

__attribute__((used)) static int FUNC22(struct file *file)
{
	struct delta_dev *delta = FUNC21(file);
	struct delta_ctx *ctx = NULL;
	int ret = 0;

	FUNC11(&delta->lock);

	ctx = FUNC9(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		ret = -ENOMEM;
		goto err;
	}
	ctx->dev = delta;

	FUNC18(&ctx->fh, FUNC20(file));
	file->private_data = &ctx->fh;
	FUNC15(&ctx->fh);

	FUNC1(&ctx->run_work, delta_run_work);
	FUNC10(&ctx->lock);

	ctx->fh.m2m_ctx = FUNC19(delta->m2m_dev, ctx,
					    queue_init);
	if (FUNC2(ctx->fh.m2m_ctx)) {
		ret = FUNC3(ctx->fh.m2m_ctx);
		FUNC6(delta->dev, "%s failed to initialize m2m context (%d)\n",
			DELTA_PREFIX, ret);
		goto err_fh_del;
	}

	/*
	 * wait stream format to determine which
	 * decoder to open
	 */
	ctx->state = DELTA_STATE_WF_FORMAT;

	FUNC0(&ctx->dts);

	/* set the instance name */
	delta->instance_id++;
	FUNC14(ctx->name, sizeof(ctx->name), "[%3d:----]",
		 delta->instance_id);

	/* default parameters for frame and stream */
	FUNC13(ctx);

	/* enable ST231 clocks */
	if (delta->clk_st231)
		if (FUNC4(delta->clk_st231))
			FUNC7(delta->dev, "failed to enable st231 clk\n");

	/* enable FLASH_PROMIP clock */
	if (delta->clk_flash_promip)
		if (FUNC4(delta->clk_flash_promip))
			FUNC7(delta->dev, "failed to enable delta promip clk\n");

	FUNC12(&delta->lock);

	FUNC5(delta->dev, "%s decoder instance created\n", ctx->name);

	return 0;

err_fh_del:
	FUNC16(&ctx->fh);
	FUNC17(&ctx->fh);
	FUNC8(ctx);
err:
	FUNC12(&delta->lock);

	return ret;
}