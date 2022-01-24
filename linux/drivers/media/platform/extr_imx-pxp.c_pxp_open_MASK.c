#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct pxp_dev {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  num_inst; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; struct v4l2_ctrl_handler* ctrl_handler; } ;
struct pxp_ctx {TYPE_2__ fh; int /*<<< orphan*/  colorspace; TYPE_1__* q_data; struct v4l2_ctrl_handler hdl; struct pxp_dev* dev; } ;
struct file {TYPE_2__* private_data; } ;
struct TYPE_5__ {int width; int height; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  bytesperline; int /*<<< orphan*/ * fmt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_CID_ALPHA_COMPONENT ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_REC709 ; 
 size_t V4L2_M2M_DST ; 
 size_t V4L2_M2M_SRC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pxp_dev*,char*,struct pxp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * formats ; 
 int /*<<< orphan*/  FUNC4 (struct pxp_ctx*) ; 
 struct pxp_ctx* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pxp_ctrl_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct pxp_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct file*) ; 
 struct pxp_dev* FUNC19 (struct file*) ; 

__attribute__((used)) static int FUNC20(struct file *file)
{
	struct pxp_dev *dev = FUNC19(file);
	struct pxp_ctx *ctx = NULL;
	struct v4l2_ctrl_handler *hdl;
	int rc = 0;

	if (FUNC6(&dev->dev_mutex))
		return -ERESTARTSYS;
	ctx = FUNC5(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		rc = -ENOMEM;
		goto open_unlock;
	}

	FUNC16(&ctx->fh, FUNC18(file));
	file->private_data = &ctx->fh;
	ctx->dev = dev;
	hdl = &ctx->hdl;
	FUNC11(hdl, 4);
	FUNC13(hdl, &pxp_ctrl_ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC13(hdl, &pxp_ctrl_ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC13(hdl, &pxp_ctrl_ops, V4L2_CID_ALPHA_COMPONENT,
			  0, 255, 1, 255);
	if (hdl->error) {
		rc = hdl->error;
		FUNC10(hdl);
		FUNC4(ctx);
		goto open_unlock;
	}
	ctx->fh.ctrl_handler = hdl;
	FUNC12(hdl);

	ctx->q_data[V4L2_M2M_SRC].fmt = &formats[0];
	ctx->q_data[V4L2_M2M_SRC].width = 640;
	ctx->q_data[V4L2_M2M_SRC].height = 480;
	ctx->q_data[V4L2_M2M_SRC].bytesperline =
		FUNC8(&formats[0], 640);
	ctx->q_data[V4L2_M2M_SRC].sizeimage =
		FUNC9(&formats[0], 640, 480);
	ctx->q_data[V4L2_M2M_DST] = ctx->q_data[V4L2_M2M_SRC];
	ctx->colorspace = V4L2_COLORSPACE_REC709;

	ctx->fh.m2m_ctx = FUNC17(dev->m2m_dev, ctx, &queue_init);

	if (FUNC0(ctx->fh.m2m_ctx)) {
		rc = FUNC1(ctx->fh.m2m_ctx);

		FUNC10(hdl);
		FUNC15(&ctx->fh);
		FUNC4(ctx);
		goto open_unlock;
	}

	FUNC14(&ctx->fh);
	FUNC2(&dev->num_inst);

	FUNC3(dev, "Created instance: %p, m2m_ctx: %p\n",
		ctx, ctx->fh.m2m_ctx);

open_unlock:
	FUNC7(&dev->dev_mutex);
	return rc;
}