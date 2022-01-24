#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct s5p_jpeg_fmt {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct TYPE_8__ {struct s5p_jpeg_fmt* fmt; } ;
struct TYPE_7__ {struct s5p_jpeg_fmt* fmt; } ;
struct s5p_jpeg_ctx {TYPE_3__ fh; TYPE_2__ cap_q; TYPE_1__ out_q; int /*<<< orphan*/  scale_factor; int /*<<< orphan*/  mode; struct s5p_jpeg* jpeg; int /*<<< orphan*/  ctrl_handler; } ;
struct s5p_jpeg {int /*<<< orphan*/  lock; int /*<<< orphan*/  m2m_dev; struct video_device* vfd_encoder; } ;
struct file {TYPE_3__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  EXYNOS3250_DEC_SCALE_FACTOR_8_8 ; 
 int /*<<< orphan*/  FMT_TYPE_CAPTURE ; 
 int /*<<< orphan*/  FMT_TYPE_OUTPUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S5P_JPEG_DECODE ; 
 int /*<<< orphan*/  S5P_JPEG_ENCODE ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_JPEG ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_RGB565 ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_YUYV ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_jpeg_ctx*) ; 
 struct s5p_jpeg_ctx* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_init ; 
 int FUNC6 (struct s5p_jpeg_ctx*) ; 
 struct s5p_jpeg_fmt* FUNC7 (struct s5p_jpeg_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,struct video_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct s5p_jpeg_ctx*,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC13 (struct file*) ; 
 struct s5p_jpeg* FUNC14 (struct file*) ; 

__attribute__((used)) static int FUNC15(struct file *file)
{
	struct s5p_jpeg *jpeg = FUNC14(file);
	struct video_device *vfd = FUNC13(file);
	struct s5p_jpeg_ctx *ctx;
	struct s5p_jpeg_fmt *out_fmt, *cap_fmt;
	int ret = 0;

	ctx = FUNC3(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	if (FUNC4(&jpeg->lock)) {
		ret = -ERESTARTSYS;
		goto free;
	}

	FUNC11(&ctx->fh, vfd);
	/* Use separate control handler per file handle */
	ctx->fh.ctrl_handler = &ctx->ctrl_handler;
	file->private_data = &ctx->fh;
	FUNC8(&ctx->fh);

	ctx->jpeg = jpeg;
	if (vfd == jpeg->vfd_encoder) {
		ctx->mode = S5P_JPEG_ENCODE;
		out_fmt = FUNC7(ctx, V4L2_PIX_FMT_RGB565,
							FMT_TYPE_OUTPUT);
		cap_fmt = FUNC7(ctx, V4L2_PIX_FMT_JPEG,
							FMT_TYPE_CAPTURE);
	} else {
		ctx->mode = S5P_JPEG_DECODE;
		out_fmt = FUNC7(ctx, V4L2_PIX_FMT_JPEG,
							FMT_TYPE_OUTPUT);
		cap_fmt = FUNC7(ctx, V4L2_PIX_FMT_YUYV,
							FMT_TYPE_CAPTURE);
		ctx->scale_factor = EXYNOS3250_DEC_SCALE_FACTOR_8_8;
	}

	ctx->fh.m2m_ctx = FUNC12(jpeg->m2m_dev, ctx, queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		goto error;
	}

	ctx->out_q.fmt = out_fmt;
	ctx->cap_q.fmt = cap_fmt;

	ret = FUNC6(ctx);
	if (ret < 0)
		goto error;

	FUNC5(&jpeg->lock);
	return 0;

error:
	FUNC9(&ctx->fh);
	FUNC10(&ctx->fh);
	FUNC5(&jpeg->lock);
free:
	FUNC2(ctx);
	return ret;
}