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
struct sd {scalar_t__ sensor; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* autogain; void* exposure; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 scalar_t__ SENSOR_OV361x ; 
 scalar_t__ SENSOR_OV562x ; 
 scalar_t__ SENSOR_OV971x ; 
 int /*<<< orphan*/  V4L2_CID_AUTOGAIN ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_POWER_LINE_FREQUENCY ; 
 int /*<<< orphan*/  V4L2_CID_POWER_LINE_FREQUENCY_60HZ ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_SHARPNESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  sd_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *)gspca_dev;
	struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

	if (sd->sensor == SENSOR_OV971x)
		return 0;
	if (sd->sensor == SENSOR_OV361x)
		return 0;
	gspca_dev->vdev.ctrl_handler = hdl;
	FUNC2(hdl, 7);
	if (sd->sensor == SENSOR_OV562x) {
		FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_BRIGHTNESS, -90, 90, 1, 0);
	} else {
		FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_BRIGHTNESS, 0, 15, 1, 7);
		FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 15, 1, 3);
		FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_SATURATION, 0, 4, 1, 2);
		/* -1 = auto */
		FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_SHARPNESS, -1, 4, 1, -1);
		gspca_dev->autogain = FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
		gspca_dev->exposure = FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_EXPOSURE, 0, 3, 1, 0);
		FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_POWER_LINE_FREQUENCY,
			V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 0, 0);
		FUNC1(3, &gspca_dev->autogain, 0, false);
	}

	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}
	return 0;
}