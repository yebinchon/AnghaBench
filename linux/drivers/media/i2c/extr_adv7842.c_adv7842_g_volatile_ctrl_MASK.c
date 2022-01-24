#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {scalar_t__ id; int val; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_CID_DV_RX_IT_CONTENT_TYPE ; 
 int V4L2_DV_IT_CONTENT_TYPE_NO_ITC ; 
 int FUNC0 (struct v4l2_subdev*,int) ; 
 int FUNC1 (struct v4l2_subdev*,int) ; 
 struct v4l2_subdev* FUNC2 (struct v4l2_ctrl*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC2(ctrl);

	if (ctrl->id == V4L2_CID_DV_RX_IT_CONTENT_TYPE) {
		ctrl->val = V4L2_DV_IT_CONTENT_TYPE_NO_ITC;
		if ((FUNC1(sd, 0x60) & 1) && (FUNC0(sd, 0x03) & 0x80))
			ctrl->val = (FUNC0(sd, 0x05) >> 4) & 3;
		return 0;
	}
	return -EINVAL;
}