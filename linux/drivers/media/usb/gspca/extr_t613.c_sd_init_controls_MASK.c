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
struct sd {scalar_t__ sensor; void* awb; int /*<<< orphan*/  freq; void* red_balance; void* blue_balance; void* gain; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 int GAMMA_MAX ; 
 scalar_t__ SENSOR_TAS5130A ; 
 int /*<<< orphan*/  V4L2_CID_AUTO_WHITE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_BACKLIGHT_COMPENSATION ; 
 int /*<<< orphan*/  V4L2_CID_BLUE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_COLORFX ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_GAMMA ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_POWER_LINE_FREQUENCY ; 
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ; 
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ; 
 int /*<<< orphan*/  V4L2_CID_RED_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_SHARPNESS ; 
 int V4L2_COLORFX_BW ; 
 int V4L2_COLORFX_NEGATIVE ; 
 int V4L2_COLORFX_NONE ; 
 int V4L2_COLORFX_SEPIA ; 
 int V4L2_COLORFX_SKETCH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  sd_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *)gspca_dev;
	struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

	gspca_dev->vdev.ctrl_handler = hdl;
	FUNC2(hdl, 12);
	FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_BRIGHTNESS, 0, 14, 1, 8);
	FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 0x0d, 1, 7);
	FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_SATURATION, 0, 0xf, 1, 5);
	FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_GAMMA, 0, GAMMA_MAX, 1, 10);
	/* Activate lowlight, some apps don't bring up the
	   backlight_compensation control) */
	FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_BACKLIGHT_COMPENSATION, 0, 1, 1, 1);
	if (sd->sensor == SENSOR_TAS5130A)
		FUNC3(hdl, &sd_ctrl_ops,
				V4L2_CID_HFLIP, 0, 1, 1, 0);
	sd->awb = FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);
	sd->gain = FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_GAIN, 0x10, 0x40, 1, 0x20);
	sd->blue_balance = FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_BLUE_BALANCE, -0x30, 0x30, 1, 0);
	sd->red_balance = FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_RED_BALANCE, -0x30, 0x30, 1, 0);
	FUNC3(hdl, &sd_ctrl_ops,
			V4L2_CID_SHARPNESS, 0, 15, 1, 6);
	FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_COLORFX, V4L2_COLORFX_SKETCH,
			~((1 << V4L2_COLORFX_NONE) |
			  (1 << V4L2_COLORFX_BW) |
			  (1 << V4L2_COLORFX_SEPIA) |
			  (1 << V4L2_COLORFX_SKETCH) |
			  (1 << V4L2_COLORFX_NEGATIVE)),
			V4L2_COLORFX_NONE);
	sd->freq = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_POWER_LINE_FREQUENCY,
			V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 1,
			V4L2_CID_POWER_LINE_FREQUENCY_50HZ);

	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}

	FUNC1(4, &sd->awb, 0, true);

	return 0;
}