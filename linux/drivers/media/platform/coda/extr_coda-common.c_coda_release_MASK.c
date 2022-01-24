#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct file {int /*<<< orphan*/  private_data; } ;
struct coda_dev {int /*<<< orphan*/  ida; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_per; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  workqueue; } ;
struct TYPE_9__ {int /*<<< orphan*/  m2m_ctx; } ;
struct coda_ctx {scalar_t__ inst_type; int /*<<< orphan*/  debugfs_entry; TYPE_3__* ops; int /*<<< orphan*/  idx; TYPE_4__ fh; int /*<<< orphan*/  ctrls; int /*<<< orphan*/  workbuf; TYPE_2__* dev; int /*<<< orphan*/  seq_end_work; scalar_t__ vdoa; scalar_t__ use_bit; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* release ) (struct coda_ctx*) ;scalar_t__ seq_end_work; } ;
struct TYPE_7__ {TYPE_1__* devtype; } ;
struct TYPE_6__ {scalar_t__ product; } ;

/* Variables and functions */
 scalar_t__ CODA_DX6 ; 
 scalar_t__ CODA_INST_DECODER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct coda_ctx*,char*,struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct coda_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct coda_ctx* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 struct coda_dev* FUNC17 (struct file*) ; 

__attribute__((used)) static int FUNC18(struct file *file)
{
	struct coda_dev *dev = FUNC17(file);
	struct coda_ctx *ctx = FUNC5(file->private_data);

	FUNC2(1, ctx, "release instance (%p)\n", ctx);

	if (ctx->inst_type == CODA_INST_DECODER && ctx->use_bit)
		FUNC1(ctx);

	/* If this instance is running, call .job_abort and wait for it to end */
	FUNC15(ctx->fh.m2m_ctx);

	if (ctx->vdoa)
		FUNC16(ctx->vdoa);

	/* In case the instance was not running, we still need to call SEQ_END */
	if (ctx->ops->seq_end_work) {
		FUNC10(dev->workqueue, &ctx->seq_end_work);
		FUNC6(&ctx->seq_end_work);
	}

	if (ctx->dev->devtype->product == CODA_DX6)
		FUNC3(dev, &ctx->workbuf);

	FUNC12(&ctx->ctrls);
	FUNC0(dev->clk_ahb);
	FUNC0(dev->clk_per);
	FUNC9(dev->dev);
	FUNC13(&ctx->fh);
	FUNC14(&ctx->fh);
	FUNC7(&dev->ida, ctx->idx);
	if (ctx->ops->release)
		ctx->ops->release(ctx);
	FUNC4(ctx->debugfs_entry);
	FUNC8(ctx);

	return 0;
}