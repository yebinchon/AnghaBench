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
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct v4l2_pix_format_mplane {int dummy; } ;
struct v4l2_ctrl {int /*<<< orphan*/  flags; } ;
struct file {TYPE_1__* private_data; } ;
struct fdp1_dev {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  m2m_ctx; TYPE_3__* ctrl_handler; } ;
struct TYPE_9__ {int error; } ;
struct fdp1_ctx {int translen; TYPE_1__ fh; TYPE_3__ hdl; scalar_t__ sequence; int /*<<< orphan*/  fields_queue; struct fdp1_dev* fdp1; } ;
typedef  int /*<<< orphan*/  format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FDP1_FIXED3D ; 
 int /*<<< orphan*/  FDP1_NEXTFIELD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  V4L2_CID_ALPHA_COMPONENT ; 
 int /*<<< orphan*/  V4L2_CID_DEINTERLACING_MODE ; 
 int /*<<< orphan*/  V4L2_CID_MIN_BUFFERS_FOR_CAPTURE ; 
 int /*<<< orphan*/  V4L2_CTRL_FLAG_VOLATILE ; 
 int /*<<< orphan*/  FUNC4 (struct fdp1_dev*,char*,struct fdp1_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdp1_ctrl_deint_menu ; 
 int /*<<< orphan*/  fdp1_ctrl_ops ; 
 int /*<<< orphan*/  FUNC5 (struct fdp1_ctx*,struct v4l2_pix_format_mplane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fdp1_ctx*) ; 
 struct fdp1_ctx* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_pix_format_mplane*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 struct v4l2_ctrl* FUNC15 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct fdp1_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct file*) ; 
 struct fdp1_dev* FUNC21 (struct file*) ; 

__attribute__((used)) static int FUNC22(struct file *file)
{
	struct fdp1_dev *fdp1 = FUNC21(file);
	struct v4l2_pix_format_mplane format;
	struct fdp1_ctx *ctx = NULL;
	struct v4l2_ctrl *ctrl;
	int ret = 0;

	if (FUNC9(&fdp1->dev_mutex))
		return -ERESTARTSYS;

	ctx = FUNC7(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		ret = -ENOMEM;
		goto done;
	}

	FUNC18(&ctx->fh, FUNC20(file));
	file->private_data = &ctx->fh;
	ctx->fdp1 = fdp1;

	/* Initialise Queues */
	FUNC1(&ctx->fields_queue);

	ctx->translen = 1;
	ctx->sequence = 0;

	/* Initialise controls */

	FUNC13(&ctx->hdl, 3);
	FUNC16(&ctx->hdl, &fdp1_ctrl_ops,
				     V4L2_CID_DEINTERLACING_MODE,
				     FDP1_NEXTFIELD, FUNC0(0), FDP1_FIXED3D,
				     fdp1_ctrl_deint_menu);

	ctrl = FUNC15(&ctx->hdl, &fdp1_ctrl_ops,
				 V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 2, 1, 1);
	if (ctrl)
		ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;

	FUNC15(&ctx->hdl, &fdp1_ctrl_ops,
			  V4L2_CID_ALPHA_COMPONENT, 0, 255, 1, 255);

	if (ctx->hdl.error) {
		ret = ctx->hdl.error;
		FUNC12(&ctx->hdl);
		FUNC6(ctx);
		goto done;
	}

	ctx->fh.ctrl_handler = &ctx->hdl;
	FUNC14(&ctx->hdl);

	/* Configure default parameters. */
	FUNC8(&format, 0, sizeof(format));
	FUNC5(ctx, &format, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);

	ctx->fh.m2m_ctx = FUNC19(fdp1->m2m_dev, ctx, &queue_init);

	if (FUNC2(ctx->fh.m2m_ctx)) {
		ret = FUNC3(ctx->fh.m2m_ctx);

		FUNC12(&ctx->hdl);
		FUNC6(ctx);
		goto done;
	}

	/* Perform any power management required */
	FUNC11(fdp1->dev);

	FUNC17(&ctx->fh);

	FUNC4(fdp1, "Created instance: %p, m2m_ctx: %p\n",
		ctx, ctx->fh.m2m_ctx);

done:
	FUNC10(&fdp1->dev_mutex);
	return ret;
}