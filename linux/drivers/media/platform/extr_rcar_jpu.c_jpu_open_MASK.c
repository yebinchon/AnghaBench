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
struct TYPE_9__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct TYPE_8__ {int /*<<< orphan*/  format; int /*<<< orphan*/  fmtinfo; } ;
struct TYPE_7__ {int /*<<< orphan*/  format; int /*<<< orphan*/  fmtinfo; } ;
struct jpu_ctx {int encoder; TYPE_3__ fh; TYPE_2__ cap_q; TYPE_1__ out_q; struct jpu* jpu; int /*<<< orphan*/  ctrl_handler; } ;
struct jpu {scalar_t__ ref_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  clk; int /*<<< orphan*/  m2m_dev; struct video_device vfd_encoder; } ;
struct file {TYPE_3__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  FUNC2 (struct jpu_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct jpu_ctx*) ; 
 int /*<<< orphan*/  jpu_queue_init ; 
 int FUNC6 (struct jpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct jpu_ctx*) ; 
 struct jpu_ctx* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,struct video_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct jpu_ctx*,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC16 (struct file*) ; 
 struct jpu* FUNC17 (struct file*) ; 

__attribute__((used)) static int FUNC18(struct file *file)
{
	struct jpu *jpu = FUNC17(file);
	struct video_device *vfd = FUNC16(file);
	struct jpu_ctx *ctx;
	int ret;

	ctx = FUNC8(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC14(&ctx->fh, vfd);
	ctx->fh.ctrl_handler = &ctx->ctrl_handler;
	file->private_data = &ctx->fh;
	FUNC11(&ctx->fh);

	ctx->jpu = jpu;
	ctx->encoder = vfd == &jpu->vfd_encoder;

	FUNC2(ctx, &ctx->out_q.fmtinfo, &ctx->out_q.format,
		      V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
	FUNC2(ctx, &ctx->cap_q.fmtinfo, &ctx->cap_q.format,
		      V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);

	ctx->fh.m2m_ctx = FUNC15(jpu->m2m_dev, ctx, jpu_queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		goto v4l_prepare_rollback;
	}

	ret = FUNC5(ctx);
	if (ret < 0)
		goto v4l_prepare_rollback;

	if (FUNC9(&jpu->mutex)) {
		ret = -ERESTARTSYS;
		goto v4l_prepare_rollback;
	}

	if (jpu->ref_count == 0) {
		ret = FUNC4(jpu->clk);
		if (ret < 0)
			goto device_prepare_rollback;
		/* ...issue software reset */
		ret = FUNC6(jpu);
		if (ret)
			goto jpu_reset_rollback;
	}

	jpu->ref_count++;

	FUNC10(&jpu->mutex);
	return 0;

jpu_reset_rollback:
	FUNC3(jpu->clk);
device_prepare_rollback:
	FUNC10(&jpu->mutex);
v4l_prepare_rollback:
	FUNC12(&ctx->fh);
	FUNC13(&ctx->fh);
	FUNC7(ctx);
	return ret;
}