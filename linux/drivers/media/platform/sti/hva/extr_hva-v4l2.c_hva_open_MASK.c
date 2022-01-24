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
struct hva_dev {int instance_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct hva_ctx {TYPE_1__ fh; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  name; int /*<<< orphan*/  sys_errors; int /*<<< orphan*/  lock; int /*<<< orphan*/  run_work; struct hva_dev* hva_dev; } ;
struct file {TYPE_1__* private_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HVA_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct hva_ctx*) ; 
 int /*<<< orphan*/  hva_queue_init ; 
 int /*<<< orphan*/  hva_run_work ; 
 struct device* FUNC7 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hva_ctx*) ; 
 struct hva_ctx* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct hva_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct file*) ; 
 struct hva_dev* FUNC22 (struct file*) ; 

__attribute__((used)) static int FUNC23(struct file *file)
{
	struct hva_dev *hva = FUNC22(file);
	struct device *dev = FUNC7(hva);
	struct hva_ctx *ctx;
	int ret;

	ctx = FUNC9(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		ret = -ENOMEM;
		goto out;
	}
	ctx->hva_dev = hva;

	FUNC0(&ctx->run_work, hva_run_work);
	FUNC19(&ctx->fh, FUNC21(file));
	file->private_data = &ctx->fh;
	FUNC16(&ctx->fh);

	ret = FUNC5(ctx);
	if (ret) {
		FUNC3(dev, "%s [x:x] failed to setup controls\n",
			HVA_PREFIX);
		ctx->sys_errors++;
		goto err_fh;
	}
	ctx->fh.ctrl_handler = &ctx->ctrl_handler;

	FUNC10(&ctx->lock);

	ctx->fh.m2m_ctx = FUNC20(hva->m2m_dev, ctx,
					    &hva_queue_init);
	if (FUNC1(ctx->fh.m2m_ctx)) {
		ret = FUNC2(ctx->fh.m2m_ctx);
		FUNC3(dev, "%s failed to initialize m2m context (%d)\n",
			HVA_PREFIX, ret);
		ctx->sys_errors++;
		goto err_ctrls;
	}

	/* set the instance name */
	FUNC11(&hva->lock);
	hva->instance_id++;
	FUNC14(ctx->name, sizeof(ctx->name), "[%3d:----]",
		 hva->instance_id);
	FUNC12(&hva->lock);

	/* default parameters for frame and stream */
	FUNC13(ctx);

#ifdef CONFIG_VIDEO_STI_HVA_DEBUGFS
	hva_dbg_ctx_create(ctx);
#endif

	FUNC4(dev, "%s encoder instance created\n", ctx->name);

	return 0;

err_ctrls:
	FUNC15(&ctx->ctrl_handler);
err_fh:
	FUNC17(&ctx->fh);
	FUNC18(&ctx->fh);
	FUNC8(ctx);
out:
	return ret;
}