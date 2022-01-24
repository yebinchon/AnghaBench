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
struct v4l2_ctrl {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int error; } ;
struct mtk_vcodec_ctx {TYPE_1__ ctrl_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_MIN_BUFFERS_FOR_CAPTURE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_VP9_PROFILE ; 
 int /*<<< orphan*/  V4L2_CTRL_FLAG_VOLATILE ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_VP9_PROFILE_0 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  mtk_vcodec_dec_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct v4l2_ctrl* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct mtk_vcodec_ctx *ctx)
{
	struct v4l2_ctrl *ctrl;

	FUNC1(&ctx->ctrl_hdl, 1);

	ctrl = FUNC3(&ctx->ctrl_hdl,
				&mtk_vcodec_dec_ctrl_ops,
				V4L2_CID_MIN_BUFFERS_FOR_CAPTURE,
				0, 32, 1, 1);
	ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
	FUNC4(&ctx->ctrl_hdl,
				&mtk_vcodec_dec_ctrl_ops,
				V4L2_CID_MPEG_VIDEO_VP9_PROFILE,
				V4L2_MPEG_VIDEO_VP9_PROFILE_0,
				0, V4L2_MPEG_VIDEO_VP9_PROFILE_0);

	if (ctx->ctrl_hdl.error) {
		FUNC0("Adding control failed %d",
				ctx->ctrl_hdl.error);
		return ctx->ctrl_hdl.error;
	}

	FUNC2(&ctx->ctrl_hdl);
	return 0;
}