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
struct sd {void* sat; void* contrast; void* brightness; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  sd_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC2 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *)gspca_dev;
	struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

	gspca_dev->vdev.ctrl_handler = hdl;
	FUNC1(hdl, 3);
	sd->brightness = FUNC2(hdl, &sd_ctrl_ops,
			V4L2_CID_BRIGHTNESS, 0, 255, 1, 0xd4);
	sd->contrast = FUNC2(hdl, &sd_ctrl_ops,
			V4L2_CID_CONTRAST, 0x0a, 0x1f, 1, 0x0c);
	sd->sat = FUNC2(hdl, &sd_ctrl_ops,
			V4L2_CID_SATURATION, 0, 7, 1, 3);
	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}
	return 0;
}