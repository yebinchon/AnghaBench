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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct TYPE_8__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct TYPE_7__ {TYPE_4__* v4l2_dev; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  audio_codec; } ;
struct hdpvr_device {int flags; int width; int height; int fw_ver; TYPE_4__ v4l2_dev; TYPE_2__ video_dev; int /*<<< orphan*/  video_mode; void* video_bitrate_peak; void* video_bitrate; TYPE_1__ options; int /*<<< orphan*/  cur_dv_timings; int /*<<< orphan*/  cur_std; struct v4l2_ctrl_handler hdl; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t HDPVR_DEF_DV_TIMINGS_IDX ; 
 int HDPVR_FLAG_AC3_CAP ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_AUDIO_ENCODING ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_STREAM_TYPE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_BITRATE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_BITRATE_MODE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_BITRATE_PEAK ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_ENCODING ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_SHARPNESS ; 
 int /*<<< orphan*/  V4L2_MPEG_AUDIO_ENCODING_AAC ; 
 int /*<<< orphan*/  V4L2_MPEG_AUDIO_ENCODING_AC3 ; 
 int /*<<< orphan*/  V4L2_MPEG_STREAM_TYPE_MPEG2_TS ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC ; 
 int /*<<< orphan*/  V4L2_STD_525_60 ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  hdpvr_ctrl_ops ; 
 int /*<<< orphan*/ * hdpvr_dv_timings ; 
 TYPE_2__ hdpvr_video_template ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int) ; 
 int FUNC4 (struct v4l2_ctrl_handler*) ; 
 void* FUNC5 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct hdpvr_device*) ; 

int FUNC10(struct hdpvr_device *dev, struct device *parent,
			    int devnum)
{
	struct v4l2_ctrl_handler *hdl = &dev->hdl;
	bool ac3 = dev->flags & HDPVR_FLAG_AC3_CAP;
	int res;

	dev->cur_std = V4L2_STD_525_60;
	dev->width = 720;
	dev->height = 480;
	dev->cur_dv_timings = hdpvr_dv_timings[HDPVR_DEF_DV_TIMINGS_IDX];
	FUNC3(hdl, 11);
	if (dev->fw_ver > 0x15) {
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_BRIGHTNESS, 0x0, 0xff, 1, 0x80);
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_CONTRAST, 0x0, 0xff, 1, 0x40);
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_SATURATION, 0x0, 0xff, 1, 0x40);
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_HUE, 0x0, 0x1e, 1, 0xf);
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_SHARPNESS, 0x0, 0xff, 1, 0x80);
	} else {
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_BRIGHTNESS, 0x0, 0xff, 1, 0x86);
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_CONTRAST, 0x0, 0xff, 1, 0x80);
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_SATURATION, 0x0, 0xff, 1, 0x80);
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_HUE, 0x0, 0xff, 1, 0x80);
		FUNC5(hdl, &hdpvr_ctrl_ops,
			V4L2_CID_SHARPNESS, 0x0, 0xff, 1, 0x80);
	}

	FUNC6(hdl, &hdpvr_ctrl_ops,
		V4L2_CID_MPEG_STREAM_TYPE,
		V4L2_MPEG_STREAM_TYPE_MPEG2_TS,
		0x1, V4L2_MPEG_STREAM_TYPE_MPEG2_TS);
	FUNC6(hdl, &hdpvr_ctrl_ops,
		V4L2_CID_MPEG_AUDIO_ENCODING,
		ac3 ? V4L2_MPEG_AUDIO_ENCODING_AC3 : V4L2_MPEG_AUDIO_ENCODING_AAC,
		0x7, ac3 ? dev->options.audio_codec : V4L2_MPEG_AUDIO_ENCODING_AAC);
	FUNC6(hdl, &hdpvr_ctrl_ops,
		V4L2_CID_MPEG_VIDEO_ENCODING,
		V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, 0x3,
		V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC);

	dev->video_mode = FUNC6(hdl, &hdpvr_ctrl_ops,
		V4L2_CID_MPEG_VIDEO_BITRATE_MODE,
		V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 0,
		V4L2_MPEG_VIDEO_BITRATE_MODE_CBR);

	dev->video_bitrate = FUNC5(hdl, &hdpvr_ctrl_ops,
		V4L2_CID_MPEG_VIDEO_BITRATE,
		1000000, 13500000, 100000, 6500000);
	dev->video_bitrate_peak = FUNC5(hdl, &hdpvr_ctrl_ops,
		V4L2_CID_MPEG_VIDEO_BITRATE_PEAK,
		1100000, 20200000, 100000, 9000000);
	dev->v4l2_dev.ctrl_handler = hdl;
	if (hdl->error) {
		res = hdl->error;
		FUNC7(&dev->v4l2_dev, "Could not register controls\n");
		goto error;
	}
	FUNC1(3, &dev->video_mode);
	res = FUNC4(hdl);
	if (res < 0) {
		FUNC7(&dev->v4l2_dev, "Could not setup controls\n");
		goto error;
	}

	/* setup and register video device */
	dev->video_dev = hdpvr_video_template;
	FUNC0(dev->video_dev.name, "Hauppauge HD PVR",
		sizeof(dev->video_dev.name));
	dev->video_dev.v4l2_dev = &dev->v4l2_dev;
	FUNC9(&dev->video_dev, dev);

	res = FUNC8(&dev->video_dev, VFL_TYPE_GRABBER, devnum);
	if (res < 0) {
		FUNC7(&dev->v4l2_dev, "video_device registration failed\n");
		goto error;
	}

	return 0;
error:
	FUNC2(hdl);
	return res;
}