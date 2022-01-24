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
struct sd {void* hflip; void* auto_white_bal; void* vflip; void* blue_bal; void* red_bal; int /*<<< orphan*/  green_bal; TYPE_2__ gspca_dev; } ;

/* Variables and functions */
 int INITIAL_MAX_GAIN ; 
 int /*<<< orphan*/  MT9M111_BLUE_GAIN_DEFAULT ; 
 int /*<<< orphan*/  MT9M111_DEFAULT_GAIN ; 
 int /*<<< orphan*/  MT9M111_RED_GAIN_DEFAULT ; 
 int /*<<< orphan*/  V4L2_CID_AUTO_WHITE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_BLUE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_RED_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  mt9m111_ctrl_ops ; 
 int /*<<< orphan*/  mt9m111_greenbal_cfg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct sd *sd)
{
	struct v4l2_ctrl_handler *hdl = &sd->gspca_dev.ctrl_handler;

	sd->gspca_dev.vdev.ctrl_handler = hdl;
	FUNC3(hdl, 7);

	sd->auto_white_bal = FUNC5(hdl, &mt9m111_ctrl_ops,
					       V4L2_CID_AUTO_WHITE_BALANCE,
					       0, 1, 1, 0);
	sd->green_bal = FUNC4(hdl, &mt9m111_greenbal_cfg, NULL);
	sd->red_bal = FUNC5(hdl, &mt9m111_ctrl_ops,
					V4L2_CID_RED_BALANCE, 0, 0x7ff, 1,
					MT9M111_RED_GAIN_DEFAULT);
	sd->blue_bal = FUNC5(hdl, &mt9m111_ctrl_ops,
					V4L2_CID_BLUE_BALANCE, 0, 0x7ff, 1,
					MT9M111_BLUE_GAIN_DEFAULT);

	FUNC5(hdl, &mt9m111_ctrl_ops, V4L2_CID_GAIN, 0,
			  (INITIAL_MAX_GAIN - 1) * 2 * 2 * 2, 1,
			  MT9M111_DEFAULT_GAIN);

	sd->hflip = FUNC5(hdl, &mt9m111_ctrl_ops, V4L2_CID_HFLIP,
				      0, 1, 1, 0);
	sd->vflip = FUNC5(hdl, &mt9m111_ctrl_ops, V4L2_CID_VFLIP,
				      0, 1, 1, 0);

	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}

	FUNC1(4, &sd->auto_white_bal, 0, false);
	FUNC2(2, &sd->hflip);

	return 0;
}