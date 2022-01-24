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
struct TYPE_2__ {struct v4l2_ctrl_handler ctrl_handler; } ;
struct sd {TYPE_1__ gspca_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDCS_DEFAULT_EXPOSURE ; 
 int /*<<< orphan*/  HDCS_DEFAULT_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  hdcs_ctrl_ops ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sd *sd)
{
	struct v4l2_ctrl_handler *hdl = &sd->gspca_dev.ctrl_handler;

	FUNC0(hdl, 2);
	FUNC1(hdl, &hdcs_ctrl_ops,
			V4L2_CID_EXPOSURE, 0, 0xff, 1, HDCS_DEFAULT_EXPOSURE);
	FUNC1(hdl, &hdcs_ctrl_ops,
			V4L2_CID_GAIN, 0, 0xff, 1, HDCS_DEFAULT_GAIN);
	return hdl->error;
}