#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct sd {scalar_t__ sensor; void* autogain; void* hflip; void* blue; void* brightness; void* jpegqual; void* gain; void* exposure; void* vflip; void* red; void* gamma; void* hue; void* saturation; void* contrast; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 scalar_t__ SENSOR_MT9M001 ; 
 scalar_t__ SENSOR_MT9M111 ; 
 scalar_t__ SENSOR_MT9M112 ; 
 scalar_t__ SENSOR_MT9V111 ; 
 scalar_t__ SENSOR_MT9VPRB ; 
 scalar_t__ SENSOR_OV7670 ; 
 scalar_t__ SENSOR_OV9655 ; 
 scalar_t__ SENSOR_SOI968 ; 
 int /*<<< orphan*/  V4L2_CID_AUTOGAIN ; 
 int /*<<< orphan*/  V4L2_CID_BLUE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_GAMMA ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_JPEG_COMPRESSION_QUALITY ; 
 int /*<<< orphan*/  V4L2_CID_RED_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  sd_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

	gspca_dev->vdev.ctrl_handler = hdl;
	FUNC3(hdl, 13);

	sd->brightness = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_BRIGHTNESS, 0, 255, 1, 127);
	sd->contrast = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 255, 1, 127);
	sd->saturation = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_SATURATION, 0, 255, 1, 127);
	sd->hue = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_HUE, -180, 180, 1, 0);

	sd->gamma = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_GAMMA, 0, 255, 1, 0x10);

	sd->blue = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_BLUE_BALANCE, 0, 127, 1, 0x28);
	sd->red = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_RED_BALANCE, 0, 127, 1, 0x28);

	if (sd->sensor != SENSOR_OV9655 && sd->sensor != SENSOR_SOI968 &&
	    sd->sensor != SENSOR_OV7670 && sd->sensor != SENSOR_MT9M001 &&
	    sd->sensor != SENSOR_MT9VPRB) {
		sd->hflip = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
		sd->vflip = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	}

	if (sd->sensor != SENSOR_SOI968 && sd->sensor != SENSOR_MT9VPRB &&
	    sd->sensor != SENSOR_MT9M112 && sd->sensor != SENSOR_MT9M111 &&
	    sd->sensor != SENSOR_MT9V111)
		sd->exposure = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_EXPOSURE, 0, 0x1780, 1, 0x33);

	if (sd->sensor != SENSOR_MT9VPRB && sd->sensor != SENSOR_MT9M112 &&
	    sd->sensor != SENSOR_MT9M111 && sd->sensor != SENSOR_MT9V111) {
		sd->gain = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_GAIN, 0, 28, 1, 0);
		sd->autogain = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
	}

	sd->jpegqual = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_JPEG_COMPRESSION_QUALITY, 50, 90, 1, 80);
	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}

	FUNC2(4, &sd->brightness);
	FUNC2(2, &sd->blue);
	if (sd->hflip)
		FUNC2(2, &sd->hflip);
	if (sd->autogain) {
		if (sd->sensor == SENSOR_SOI968)
			/* this sensor doesn't have the exposure control and
			   autogain is clustered with gain instead. This works
			   because sd->exposure == NULL. */
			FUNC1(3, &sd->autogain, 0, false);
		else
			/* Otherwise autogain is clustered with exposure. */
			FUNC1(2, &sd->autogain, 0, false);
	}
	return 0;
}