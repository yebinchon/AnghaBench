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
struct g2d_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ctrl_handler; int /*<<< orphan*/  m2m_ctx; } ;
struct g2d_ctx {int /*<<< orphan*/  ctrl_handler; TYPE_1__ fh; void* out; void* in; struct g2d_dev* dev; } ;
struct file {TYPE_1__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* def_frame ; 
 int /*<<< orphan*/  FUNC2 (struct g2d_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct g2d_ctx*) ; 
 struct g2d_ctx* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct g2d_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct file*) ; 
 struct g2d_dev* FUNC13 (struct file*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct g2d_dev *dev = FUNC13(file);
	struct g2d_ctx *ctx = NULL;
	int ret = 0;

	ctx = FUNC4(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;
	ctx->dev = dev;
	/* Set default formats */
	ctx->in		= def_frame;
	ctx->out	= def_frame;

	if (FUNC5(&dev->mutex)) {
		FUNC3(ctx);
		return -ERESTARTSYS;
	}
	ctx->fh.m2m_ctx = FUNC11(dev->m2m_dev, ctx, &queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		FUNC6(&dev->mutex);
		FUNC3(ctx);
		return ret;
	}
	FUNC9(&ctx->fh, FUNC12(file));
	file->private_data = &ctx->fh;
	FUNC8(&ctx->fh);

	FUNC2(ctx);

	/* Write the default values to the ctx struct */
	FUNC7(&ctx->ctrl_handler);

	ctx->fh.ctrl_handler = &ctx->ctrl_handler;
	FUNC6(&dev->mutex);

	FUNC10(&dev->v4l2_dev, "instance opened\n");
	return 0;
}