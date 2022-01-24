#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  vfd; } ;
struct gsc_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_3__ m2m; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ctrl_handler; } ;
struct TYPE_9__ {void* fmt; } ;
struct TYPE_8__ {void* fmt; } ;
struct gsc_ctx {TYPE_4__ fh; int /*<<< orphan*/  m2m_ctx; void* out_path; void* in_path; scalar_t__ flags; int /*<<< orphan*/  state; TYPE_2__ d_frame; TYPE_1__ s_frame; struct gsc_dev* gsc_dev; int /*<<< orphan*/  ctrl_handler; } ;
struct file {TYPE_4__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GSC_CTX_M2M ; 
 void* GSC_DMA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_M2M_OPEN ; 
 int /*<<< orphan*/  current ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct gsc_ctx*) ; 
 struct gsc_ctx* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct gsc_ctx*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct gsc_ctx*,int /*<<< orphan*/ ) ; 
 struct gsc_dev* FUNC18 (struct file*) ; 

__attribute__((used)) static int FUNC19(struct file *file)
{
	struct gsc_dev *gsc = FUNC18(file);
	struct gsc_ctx *ctx = NULL;
	int ret;

	FUNC9("pid: %d, state: 0x%lx", FUNC12(current), gsc->state);

	if (FUNC7(&gsc->lock))
		return -ERESTARTSYS;

	ctx = FUNC6(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		ret = -ENOMEM;
		goto unlock;
	}

	FUNC16(&ctx->fh, gsc->m2m.vfd);
	ret = FUNC3(ctx);
	if (ret)
		goto error_fh;

	/* Use separate control handler per file handle */
	ctx->fh.ctrl_handler = &ctx->ctrl_handler;
	file->private_data = &ctx->fh;
	FUNC13(&ctx->fh);

	ctx->gsc_dev = gsc;
	/* Default color format */
	ctx->s_frame.fmt = FUNC2(0);
	ctx->d_frame.fmt = FUNC2(0);
	/* Setup the device context for mem2mem mode. */
	ctx->state = GSC_CTX_M2M;
	ctx->flags = 0;
	ctx->in_path = GSC_DMA;
	ctx->out_path = GSC_DMA;

	ctx->m2m_ctx = FUNC17(gsc->m2m.m2m_dev, ctx, queue_init);
	if (FUNC0(ctx->m2m_ctx)) {
		FUNC10("Failed to initialize m2m context");
		ret = FUNC1(ctx->m2m_ctx);
		goto error_ctrls;
	}

	if (gsc->m2m.refcnt++ == 0)
		FUNC11(ST_M2M_OPEN, &gsc->state);

	FUNC9("gsc m2m driver is opened, ctx(0x%p)", ctx);

	FUNC8(&gsc->lock);
	return 0;

error_ctrls:
	FUNC4(ctx);
	FUNC14(&ctx->fh);
error_fh:
	FUNC15(&ctx->fh);
	FUNC5(ctx);
unlock:
	FUNC8(&gsc->lock);
	return ret;
}