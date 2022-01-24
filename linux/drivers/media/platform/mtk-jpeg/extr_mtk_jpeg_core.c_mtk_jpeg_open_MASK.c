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
struct video_device {int dummy; } ;
struct mtk_jpeg_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct mtk_jpeg_ctx {TYPE_1__ fh; struct mtk_jpeg_dev* jpeg; } ;
struct file {TYPE_1__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_jpeg_ctx*) ; 
 struct mtk_jpeg_ctx* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_jpeg_queue_init ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_jpeg_ctx*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct video_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct mtk_jpeg_ctx*,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC12 (struct file*) ; 
 struct mtk_jpeg_dev* FUNC13 (struct file*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct mtk_jpeg_dev *jpeg = FUNC13(file);
	struct video_device *vfd = FUNC12(file);
	struct mtk_jpeg_ctx *ctx;
	int ret = 0;

	ctx = FUNC3(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	if (FUNC5(&jpeg->lock)) {
		ret = -ERESTARTSYS;
		goto free;
	}

	FUNC10(&ctx->fh, vfd);
	file->private_data = &ctx->fh;
	FUNC7(&ctx->fh);

	ctx->jpeg = jpeg;
	ctx->fh.m2m_ctx = FUNC11(jpeg->m2m_dev, ctx,
					    mtk_jpeg_queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		goto error;
	}

	FUNC4(ctx);
	FUNC6(&jpeg->lock);
	return 0;

error:
	FUNC8(&ctx->fh);
	FUNC9(&ctx->fh);
	FUNC6(&jpeg->lock);
free:
	FUNC2(ctx);
	return ret;
}