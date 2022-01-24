#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct vim2m_dev {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  num_inst; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  m2m_ctx; struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct vim2m_ctx {TYPE_4__ fh; int /*<<< orphan*/  work_run; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  vb_mutex; int /*<<< orphan*/  colorspace; TYPE_1__* q_data; struct v4l2_ctrl_handler hdl; struct vim2m_dev* dev; } ;
struct file {TYPE_4__* private_data; } ;
struct TYPE_12__ {int depth; } ;
struct TYPE_10__ {int /*<<< orphan*/  def; } ;
struct TYPE_9__ {int width; int height; int sizeimage; TYPE_8__* fmt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_REC709 ; 
 size_t V4L2_M2M_DST ; 
 size_t V4L2_M2M_SRC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  default_transtime ; 
 int /*<<< orphan*/  device_work ; 
 int /*<<< orphan*/  FUNC4 (struct vim2m_dev*,int,char*,struct vim2m_ctx*,int /*<<< orphan*/ ) ; 
 TYPE_8__* formats ; 
 int /*<<< orphan*/  FUNC5 (struct vim2m_ctx*) ; 
 struct vim2m_ctx* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC14 (struct v4l2_ctrl_handler*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct vim2m_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct file*) ; 
 struct vim2m_dev* FUNC21 (struct file*) ; 
 int /*<<< orphan*/  vim2m_ctrl_ops ; 
 TYPE_2__ vim2m_ctrl_trans_num_bufs ; 
 TYPE_2__ vim2m_ctrl_trans_time_msec ; 

__attribute__((used)) static int FUNC22(struct file *file)
{
	struct vim2m_dev *dev = FUNC21(file);
	struct vim2m_ctx *ctx = NULL;
	struct v4l2_ctrl_handler *hdl;
	int rc = 0;

	if (FUNC8(&dev->dev_mutex))
		return -ERESTARTSYS;
	ctx = FUNC6(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		rc = -ENOMEM;
		goto open_unlock;
	}

	FUNC18(&ctx->fh, FUNC20(file));
	file->private_data = &ctx->fh;
	ctx->dev = dev;
	hdl = &ctx->hdl;
	FUNC12(hdl, 4);
	FUNC15(hdl, &vim2m_ctrl_ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC15(hdl, &vim2m_ctrl_ops, V4L2_CID_VFLIP, 0, 1, 1, 0);

	vim2m_ctrl_trans_time_msec.def = default_transtime;
	FUNC14(hdl, &vim2m_ctrl_trans_time_msec, NULL);
	FUNC14(hdl, &vim2m_ctrl_trans_num_bufs, NULL);
	if (hdl->error) {
		rc = hdl->error;
		FUNC11(hdl);
		FUNC5(ctx);
		goto open_unlock;
	}
	ctx->fh.ctrl_handler = hdl;
	FUNC13(hdl);

	ctx->q_data[V4L2_M2M_SRC].fmt = &formats[0];
	ctx->q_data[V4L2_M2M_SRC].width = 640;
	ctx->q_data[V4L2_M2M_SRC].height = 480;
	ctx->q_data[V4L2_M2M_SRC].sizeimage =
		ctx->q_data[V4L2_M2M_SRC].width *
		ctx->q_data[V4L2_M2M_SRC].height *
		(ctx->q_data[V4L2_M2M_SRC].fmt->depth >> 3);
	ctx->q_data[V4L2_M2M_DST] = ctx->q_data[V4L2_M2M_SRC];
	ctx->colorspace = V4L2_COLORSPACE_REC709;

	ctx->fh.m2m_ctx = FUNC19(dev->m2m_dev, ctx, &queue_init);

	FUNC7(&ctx->vb_mutex);
	FUNC10(&ctx->irqlock);
	FUNC0(&ctx->work_run, device_work);

	if (FUNC1(ctx->fh.m2m_ctx)) {
		rc = FUNC2(ctx->fh.m2m_ctx);

		FUNC11(hdl);
		FUNC17(&ctx->fh);
		FUNC5(ctx);
		goto open_unlock;
	}

	FUNC16(&ctx->fh);
	FUNC3(&dev->num_inst);

	FUNC4(dev, 1, "Created instance: %p, m2m_ctx: %p\n",
		ctx, ctx->fh.m2m_ctx);

open_unlock:
	FUNC9(&dev->dev_mutex);
	return rc;
}