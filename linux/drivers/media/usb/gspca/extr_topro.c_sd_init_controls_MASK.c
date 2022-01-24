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
struct sd {scalar_t__ sensor; scalar_t__ bridge; void* jpegqual; void* gamma; void* sharpness; void* blue; void* red; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* exposure; void* autogain; void* gain; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 scalar_t__ BRIDGE_TP6800 ; 
 scalar_t__ BRIDGE_TP6810 ; 
 int NGAMMA ; 
 scalar_t__ SENSOR_CX0342 ; 
 scalar_t__ SENSOR_SOI763A ; 
 int /*<<< orphan*/  V4L2_CID_AUTOGAIN ; 
 int /*<<< orphan*/  V4L2_CID_BLUE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_GAMMA ; 
 int /*<<< orphan*/  V4L2_CID_JPEG_COMPRESSION_QUALITY ; 
 int /*<<< orphan*/  V4L2_CID_RED_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_SHARPNESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  sd_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *)gspca_dev;
	struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

	gspca_dev->vdev.ctrl_handler = hdl;
	FUNC3(hdl, 4);
	gspca_dev->exposure = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_EXPOSURE, 1, 0xdc, 1, 0x4e);
	if (sd->sensor == SENSOR_CX0342) {
		sd->red = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_RED_BALANCE, 0, 4095, 1, 256);
		sd->blue = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_BLUE_BALANCE, 0, 4095, 1, 256);
	}
	if (sd->sensor == SENSOR_SOI763A)
		gspca_dev->gain = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_GAIN, 0, 15, 1, 3);
	else
		gspca_dev->gain = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_GAIN, 0, 4095, 1, 256);
	sd->sharpness = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_SHARPNESS, 0, 3, 1, 2);
	sd->gamma = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_GAMMA, 0, NGAMMA - 1, 1,
			(sd->sensor == SENSOR_SOI763A &&
			 sd->bridge == BRIDGE_TP6800) ? 0 : 1);
	if (sd->bridge == BRIDGE_TP6810)
		gspca_dev->autogain = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
	if (sd->sensor == SENSOR_SOI763A)
		sd->jpegqual = FUNC4(hdl, &sd_ctrl_ops,
			V4L2_CID_JPEG_COMPRESSION_QUALITY,
			0, 15, 1, (sd->bridge == BRIDGE_TP6810) ? 0 : 13);

	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}
	if (gspca_dev->autogain)
		FUNC1(3, &gspca_dev->autogain, 0, false);
	else
		FUNC2(2, &gspca_dev->exposure);
	return 0;
}