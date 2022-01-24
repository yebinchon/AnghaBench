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
struct sd {void* exposure; void* gain; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*,int) ; 
 int /*<<< orphan*/  sd_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (int,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;
	struct sd *sd = (struct sd *) gspca_dev;

	gspca_dev->vdev.ctrl_handler = hdl;
	FUNC2(hdl, 2);
	/*                               min max step default */
	sd->exposure = FUNC3(hdl, &sd_ctrl_ops,
				V4L2_CID_EXPOSURE,
				1,  150,  1,  75);/* [msec] */
	sd->gain     = FUNC3(hdl, &sd_ctrl_ops,
				V4L2_CID_GAIN,
				14,  33,  1,  24);/* [dB] */
	if (hdl->error) {
		FUNC0(gspca_dev, "Could not initialize controls: %d\n",
			  hdl->error);
		return hdl->error;
	}

	FUNC1(2, &sd->exposure);
	return 0;
}