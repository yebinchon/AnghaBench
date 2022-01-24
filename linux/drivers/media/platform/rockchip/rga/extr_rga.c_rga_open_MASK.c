#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rockchip_rga {int /*<<< orphan*/  mutex; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ctrl_handler; int /*<<< orphan*/  m2m_ctx; } ;
struct rga_ctx {int /*<<< orphan*/  ctrl_handler; TYPE_1__ fh; void* out; void* in; struct rockchip_rga* rga; } ;
struct file {TYPE_1__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* def_frame ; 
 int /*<<< orphan*/  FUNC2 (struct rga_ctx*) ; 
 struct rga_ctx* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC6 (struct rga_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct rga_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 struct rockchip_rga* FUNC12 (struct file*) ; 

__attribute__((used)) static int FUNC13(struct file *file)
{
	struct rockchip_rga *rga = FUNC12(file);
	struct rga_ctx *ctx = NULL;
	int ret = 0;

	ctx = FUNC3(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;
	ctx->rga = rga;
	/* Set default formats */
	ctx->in = def_frame;
	ctx->out = def_frame;

	if (FUNC4(&rga->mutex)) {
		FUNC2(ctx);
		return -ERESTARTSYS;
	}
	ctx->fh.m2m_ctx = FUNC10(rga->m2m_dev, ctx, &queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		FUNC5(&rga->mutex);
		FUNC2(ctx);
		return ret;
	}
	FUNC9(&ctx->fh, FUNC11(file));
	file->private_data = &ctx->fh;
	FUNC8(&ctx->fh);

	FUNC6(ctx);

	/* Write the default values to the ctx struct */
	FUNC7(&ctx->ctrl_handler);

	ctx->fh.ctrl_handler = &ctx->ctrl_handler;
	FUNC5(&rga->mutex);

	return 0;
}