#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_ctrl {int dummy; } ;
struct coda_ctx {TYPE_2__* dev; struct v4l2_ctrl* mpeg4_level_ctrl; struct v4l2_ctrl* mpeg4_profile_ctrl; struct v4l2_ctrl* mpeg2_level_ctrl; struct v4l2_ctrl* mpeg2_profile_ctrl; struct v4l2_ctrl* h264_level_ctrl; struct v4l2_ctrl* h264_profile_ctrl; TYPE_1__* codec; } ;
struct TYPE_4__ {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_3__ {int src_fourcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_LEVEL ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_PROFILE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE ; 
#define  V4L2_PIX_FMT_H264 130 
#define  V4L2_PIX_FMT_MPEG2 129 
#define  V4L2_PIX_FMT_MPEG4 128 
 int /*<<< orphan*/  FUNC0 (int,struct coda_ctx*,char*,char const*,char const* const) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_ctrl*,int) ; 
 char** FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 

void FUNC10(struct coda_ctx *ctx, u8 profile_idc,
				     u8 level_idc)
{
	const char * const *profile_names;
	const char * const *level_names;
	struct v4l2_ctrl *profile_ctrl;
	struct v4l2_ctrl *level_ctrl;
	const char *codec_name;
	u32 profile_cid;
	u32 level_cid;
	int profile;
	int level;

	switch (ctx->codec->src_fourcc) {
	case V4L2_PIX_FMT_H264:
		codec_name = "H264";
		profile_cid = V4L2_CID_MPEG_VIDEO_H264_PROFILE;
		level_cid = V4L2_CID_MPEG_VIDEO_H264_LEVEL;
		profile_ctrl = ctx->h264_profile_ctrl;
		level_ctrl = ctx->h264_level_ctrl;
		profile = FUNC2(profile_idc);
		level = FUNC1(level_idc);
		break;
	case V4L2_PIX_FMT_MPEG2:
		codec_name = "MPEG-2";
		profile_cid = V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE;
		level_cid = V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL;
		profile_ctrl = ctx->mpeg2_profile_ctrl;
		level_ctrl = ctx->mpeg2_level_ctrl;
		profile = FUNC4(profile_idc);
		level = FUNC3(level_idc);
		break;
	case V4L2_PIX_FMT_MPEG4:
		codec_name = "MPEG-4";
		profile_cid = V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE;
		level_cid = V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL;
		profile_ctrl = ctx->mpeg4_profile_ctrl;
		level_ctrl = ctx->mpeg4_level_ctrl;
		profile = FUNC6(profile_idc);
		level = FUNC5(level_idc);
		break;
	default:
		return;
	}

	profile_names = FUNC8(profile_cid);
	level_names = FUNC8(level_cid);

	if (profile < 0) {
		FUNC9(&ctx->dev->v4l2_dev, "Invalid %s profile: %u\n",
			  codec_name, profile_idc);
	} else {
		FUNC0(1, ctx, "Parsed %s profile: %s\n", codec_name,
			 profile_names[profile]);
		FUNC7(profile_ctrl, profile);
	}

	if (level < 0) {
		FUNC9(&ctx->dev->v4l2_dev, "Invalid %s level: %u\n",
			  codec_name, level_idc);
	} else {
		FUNC0(1, ctx, "Parsed %s level: %s\n", codec_name,
			 level_names[level]);
		FUNC7(level_ctrl, level);
	}
}