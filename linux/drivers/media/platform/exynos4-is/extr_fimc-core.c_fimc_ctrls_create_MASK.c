#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct fimc_ctrls {int ready; int /*<<< orphan*/  colorfx; void* colorfx_cbcr; int /*<<< orphan*/ * alpha; void* vflip; void* hflip; void* rotate; struct v4l2_ctrl_handler handler; } ;
struct TYPE_5__ {int /*<<< orphan*/  fmt; } ;
struct fimc_ctx {TYPE_4__ effect; TYPE_3__* fimc_dev; struct fimc_ctrls ctrls; TYPE_1__ d_frame; } ;
struct TYPE_7__ {TYPE_2__* drv_data; } ;
struct TYPE_6__ {scalar_t__ alpha_color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIMC_REG_CIIMGEFF_FIN_BYPASS ; 
 int /*<<< orphan*/  V4L2_CID_ALPHA_COMPONENT ; 
 int /*<<< orphan*/  V4L2_CID_COLORFX ; 
 int /*<<< orphan*/  V4L2_CID_COLORFX_CBCR ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_ROTATE ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_COLORFX_NONE ; 
 int /*<<< orphan*/  V4L2_COLORFX_SET_CBCR ; 
 int /*<<< orphan*/  fimc_ctrl_ops ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct fimc_ctx *ctx)
{
	unsigned int max_alpha = FUNC0(ctx->d_frame.fmt);
	struct fimc_ctrls *ctrls = &ctx->ctrls;
	struct v4l2_ctrl_handler *handler = &ctrls->handler;

	if (ctx->ctrls.ready)
		return 0;

	FUNC2(handler, 6);

	ctrls->rotate = FUNC3(handler, &fimc_ctrl_ops,
					V4L2_CID_ROTATE, 0, 270, 90, 0);
	ctrls->hflip = FUNC3(handler, &fimc_ctrl_ops,
					V4L2_CID_HFLIP, 0, 1, 1, 0);
	ctrls->vflip = FUNC3(handler, &fimc_ctrl_ops,
					V4L2_CID_VFLIP, 0, 1, 1, 0);

	if (ctx->fimc_dev->drv_data->alpha_color)
		ctrls->alpha = FUNC3(handler, &fimc_ctrl_ops,
					V4L2_CID_ALPHA_COMPONENT,
					0, max_alpha, 1, 0);
	else
		ctrls->alpha = NULL;

	ctrls->colorfx = FUNC4(handler, &fimc_ctrl_ops,
				V4L2_CID_COLORFX, V4L2_COLORFX_SET_CBCR,
				~0x983f, V4L2_COLORFX_NONE);

	ctrls->colorfx_cbcr = FUNC3(handler, &fimc_ctrl_ops,
				V4L2_CID_COLORFX_CBCR, 0, 0xffff, 1, 0);

	ctx->effect.type = FIMC_REG_CIIMGEFF_FIN_BYPASS;

	if (!handler->error) {
		FUNC1(2, &ctrls->colorfx);
		ctrls->ready = true;
	}

	return handler->error;
}