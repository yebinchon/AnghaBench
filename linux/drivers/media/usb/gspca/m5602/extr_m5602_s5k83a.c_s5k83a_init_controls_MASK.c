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
struct sd {void* hflip; void* vflip; TYPE_2__ gspca_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  S5K83A_DEFAULT_BRIGHTNESS ; 
 int /*<<< orphan*/  S5K83A_DEFAULT_EXPOSURE ; 
 int /*<<< orphan*/  S5K83A_DEFAULT_GAIN ; 
 int S5K83A_MAXIMUM_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  s5k83a_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (int,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct sd *sd)
{
	struct v4l2_ctrl_handler *hdl = &sd->gspca_dev.ctrl_handler;

	sd->gspca_dev.vdev.ctrl_handler = hdl;
	FUNC2(hdl, 6);

	FUNC3(hdl, &s5k83a_ctrl_ops, V4L2_CID_BRIGHTNESS,
			  0, 255, 1, S5K83A_DEFAULT_BRIGHTNESS);

	FUNC3(hdl, &s5k83a_ctrl_ops, V4L2_CID_EXPOSURE,
			  0, S5K83A_MAXIMUM_EXPOSURE, 1,
			  S5K83A_DEFAULT_EXPOSURE);

	FUNC3(hdl, &s5k83a_ctrl_ops, V4L2_CID_GAIN,
			  0, 255, 1, S5K83A_DEFAULT_GAIN);

	sd->hflip = FUNC3(hdl, &s5k83a_ctrl_ops, V4L2_CID_HFLIP,
				      0, 1, 1, 0);
	sd->vflip = FUNC3(hdl, &s5k83a_ctrl_ops, V4L2_CID_VFLIP,
				      0, 1, 1, 0);

	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}

	FUNC1(2, &sd->hflip);

	return 0;
}