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
struct v4l2_ctrl_handler {int error; } ;
struct TYPE_3__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct TYPE_4__ {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct sd {void* hflip; void* autogain; void* autoexpo; void* auto_white_bal; void* vflip; void* gain; void* expo; void* blue_bal; void* red_bal; TYPE_2__ gspca_dev; } ;

/* Variables and functions */
 int BLUE_GAIN_DEFAULT ; 
 int EXPOSURE_DEFAULT ; 
 int GAIN_DEFAULT ; 
 int RED_GAIN_DEFAULT ; 
 int /*<<< orphan*/  V4L2_CID_AUTOGAIN ; 
 int /*<<< orphan*/  V4L2_CID_AUTO_WHITE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_BLUE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_RED_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  ov9650_ctrl_ops ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 void* FUNC5 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct sd *sd)
{
	struct v4l2_ctrl_handler *hdl = &sd->gspca_dev.ctrl_handler;

	sd->gspca_dev.vdev.ctrl_handler = hdl;
	FUNC3(hdl, 9);

	sd->auto_white_bal = FUNC4(hdl, &ov9650_ctrl_ops,
					       V4L2_CID_AUTO_WHITE_BALANCE,
					       0, 1, 1, 1);
	sd->red_bal = FUNC4(hdl, &ov9650_ctrl_ops,
					V4L2_CID_RED_BALANCE, 0, 255, 1,
					RED_GAIN_DEFAULT);
	sd->blue_bal = FUNC4(hdl, &ov9650_ctrl_ops,
					V4L2_CID_BLUE_BALANCE, 0, 255, 1,
					BLUE_GAIN_DEFAULT);

	sd->autoexpo = FUNC5(hdl, &ov9650_ctrl_ops,
			  V4L2_CID_EXPOSURE_AUTO, 1, 0, V4L2_EXPOSURE_AUTO);
	sd->expo = FUNC4(hdl, &ov9650_ctrl_ops, V4L2_CID_EXPOSURE,
			  0, 0x1ff, 4, EXPOSURE_DEFAULT);

	sd->autogain = FUNC4(hdl, &ov9650_ctrl_ops,
					 V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
	sd->gain = FUNC4(hdl, &ov9650_ctrl_ops, V4L2_CID_GAIN, 0,
				     0x3ff, 1, GAIN_DEFAULT);

	sd->hflip = FUNC4(hdl, &ov9650_ctrl_ops, V4L2_CID_HFLIP,
				      0, 1, 1, 0);
	sd->vflip = FUNC4(hdl, &ov9650_ctrl_ops, V4L2_CID_VFLIP,
				      0, 1, 1, 0);

	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}

	FUNC1(3, &sd->auto_white_bal, 0, false);
	FUNC1(2, &sd->autoexpo, 0, false);
	FUNC1(2, &sd->autogain, 0, false);
	FUNC2(2, &sd->hflip);

	return 0;
}