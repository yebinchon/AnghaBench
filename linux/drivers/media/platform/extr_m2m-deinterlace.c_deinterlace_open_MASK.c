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
struct file {TYPE_1__* private_data; } ;
struct dma_interleaved_template {int dummy; } ;
struct deinterlace_dev {int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct deinterlace_ctx {TYPE_1__ fh; int /*<<< orphan*/  colorspace; void* xt; struct deinterlace_dev* dev; } ;
struct data_chunk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_REC709 ; 
 int /*<<< orphan*/  FUNC2 (struct deinterlace_dev*,char*,struct deinterlace_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct deinterlace_ctx*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct deinterlace_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 struct deinterlace_dev* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct deinterlace_dev *pcdev = FUNC9(file);
	struct deinterlace_ctx *ctx = NULL;

	ctx = FUNC4(sizeof *ctx, GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC6(&ctx->fh, FUNC8(file));
	file->private_data = &ctx->fh;
	ctx->dev = pcdev;

	ctx->fh.m2m_ctx = FUNC7(pcdev->m2m_dev, ctx, &queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		int ret = FUNC1(ctx->fh.m2m_ctx);

		FUNC3(ctx);
		return ret;
	}

	ctx->xt = FUNC4(sizeof(struct dma_interleaved_template) +
				sizeof(struct data_chunk), GFP_KERNEL);
	if (!ctx->xt) {
		FUNC3(ctx);
		return -ENOMEM;
	}

	ctx->colorspace = V4L2_COLORSPACE_REC709;
	FUNC5(&ctx->fh);

	FUNC2(pcdev, "Created instance %p, m2m_ctx: %p\n",
		ctx, ctx->fh.m2m_ctx);

	return 0;
}