#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct mtk_vcodec_ctx {struct v4l2_ctrl_handler ctrl_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_MAX_CTRLS_HINT ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_BITRATE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_B_FRAMES ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_GOP_SIZE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_I_PERIOD ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_LEVEL ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_MAX_QP ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_PROFILE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_HEADER_MODE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_H264_LEVEL_4_0 ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_H264_LEVEL_4_2 ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_H264_PROFILE_HIGH ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct v4l2_ctrl_ops mtk_vcodec_enc_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct mtk_vcodec_ctx *ctx)
{
	const struct v4l2_ctrl_ops *ops = &mtk_vcodec_enc_ctrl_ops;
	struct v4l2_ctrl_handler *handler = &ctx->ctrl_hdl;

	FUNC1(handler, MTK_MAX_CTRLS_HINT);

	FUNC3(handler, ops, V4L2_CID_MPEG_VIDEO_BITRATE,
			1, 4000000, 1, 4000000);
	FUNC3(handler, ops, V4L2_CID_MPEG_VIDEO_B_FRAMES,
			0, 2, 1, 0);
	FUNC3(handler, ops, V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE,
			0, 1, 1, 1);
	FUNC3(handler, ops, V4L2_CID_MPEG_VIDEO_H264_MAX_QP,
			0, 51, 1, 51);
	FUNC3(handler, ops, V4L2_CID_MPEG_VIDEO_H264_I_PERIOD,
			0, 65535, 1, 0);
	FUNC3(handler, ops, V4L2_CID_MPEG_VIDEO_GOP_SIZE,
			0, 65535, 1, 0);
	FUNC3(handler, ops, V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE,
			0, 1, 1, 0);
	FUNC3(handler, ops, V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME,
			0, 0, 0, 0);
	FUNC4(handler, ops,
			V4L2_CID_MPEG_VIDEO_HEADER_MODE,
			V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME,
			0, V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE);
	FUNC4(handler, ops, V4L2_CID_MPEG_VIDEO_H264_PROFILE,
			V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
			0, V4L2_MPEG_VIDEO_H264_PROFILE_HIGH);
	FUNC4(handler, ops, V4L2_CID_MPEG_VIDEO_H264_LEVEL,
			V4L2_MPEG_VIDEO_H264_LEVEL_4_2,
			0, V4L2_MPEG_VIDEO_H264_LEVEL_4_0);
	if (handler->error) {
		FUNC0("Init control handler fail %d",
				handler->error);
		return handler->error;
	}

	FUNC2(&ctx->ctrl_hdl);

	return 0;
}