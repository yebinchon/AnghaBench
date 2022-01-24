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
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct tw68_dev {TYPE_1__ v4l2_dev; struct v4l2_ctrl_handler hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CHROMA_AGC ; 
 int /*<<< orphan*/  V4L2_CID_COLOR_KILLER ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  tw68_ctrl_ops ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 

int FUNC4(struct tw68_dev *dev)
{
	struct v4l2_ctrl_handler *hdl = &dev->hdl;

	FUNC1(hdl, 6);
	FUNC3(hdl, &tw68_ctrl_ops,
			V4L2_CID_BRIGHTNESS, -128, 127, 1, 20);
	FUNC3(hdl, &tw68_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 255, 1, 100);
	FUNC3(hdl, &tw68_ctrl_ops,
			V4L2_CID_SATURATION, 0, 255, 1, 128);
	/* NTSC only */
	FUNC3(hdl, &tw68_ctrl_ops,
			V4L2_CID_HUE, -128, 127, 1, 0);
	FUNC3(hdl, &tw68_ctrl_ops,
			V4L2_CID_COLOR_KILLER, 0, 1, 1, 0);
	FUNC3(hdl, &tw68_ctrl_ops,
			V4L2_CID_CHROMA_AGC, 0, 1, 1, 1);
	if (hdl->error) {
		FUNC0(hdl);
		return hdl->error;
	}
	dev->v4l2_dev.ctrl_handler = hdl;
	FUNC2(hdl);
	return 0;
}