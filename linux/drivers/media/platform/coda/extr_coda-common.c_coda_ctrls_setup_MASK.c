#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ error; } ;
struct coda_ctx {scalar_t__ inst_type; TYPE_3__ ctrls; TYPE_2__* dev; TYPE_1__* cvd; } ;
struct TYPE_7__ {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_6__ {scalar_t__* dst_formats; scalar_t__* src_formats; } ;

/* Variables and functions */
 scalar_t__ CODA_INST_ENCODER ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_MIN_BUFFERS_FOR_CAPTURE ; 
 int /*<<< orphan*/  V4L2_CID_MIN_BUFFERS_FOR_OUTPUT ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 scalar_t__ V4L2_PIX_FMT_H264 ; 
 scalar_t__ V4L2_PIX_FMT_JPEG ; 
 int /*<<< orphan*/  coda_ctrl_ops ; 
 int /*<<< orphan*/  FUNC0 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct coda_ctx *ctx)
{
	FUNC3(&ctx->ctrls, 2);

	FUNC5(&ctx->ctrls, &coda_ctrl_ops,
		V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC5(&ctx->ctrls, &coda_ctrl_ops,
		V4L2_CID_VFLIP, 0, 1, 1, 0);
	if (ctx->inst_type == CODA_INST_ENCODER) {
		FUNC5(&ctx->ctrls, &coda_ctrl_ops,
				  V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
				  1, 1, 1, 1);
		if (ctx->cvd->dst_formats[0] == V4L2_PIX_FMT_JPEG)
			FUNC2(ctx);
		else
			FUNC1(ctx);
	} else {
		FUNC5(&ctx->ctrls, &coda_ctrl_ops,
				  V4L2_CID_MIN_BUFFERS_FOR_CAPTURE,
				  1, 1, 1, 1);
		if (ctx->cvd->src_formats[0] == V4L2_PIX_FMT_H264)
			FUNC0(ctx);
	}

	if (ctx->ctrls.error) {
		FUNC6(&ctx->dev->v4l2_dev,
			"control initialization error (%d)",
			ctx->ctrls.error);
		return -EINVAL;
	}

	return FUNC4(&ctx->ctrls);
}