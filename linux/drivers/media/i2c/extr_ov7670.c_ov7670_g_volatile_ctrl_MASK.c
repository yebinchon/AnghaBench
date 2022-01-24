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
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; } ;
struct ov7670_info {TYPE_1__* gain; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUTOGAIN 128 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC1 (struct v4l2_ctrl*) ; 
 struct ov7670_info* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC1(ctrl);
	struct ov7670_info *info = FUNC2(sd);

	switch (ctrl->id) {
	case V4L2_CID_AUTOGAIN:
		return FUNC0(sd, &info->gain->val);
	}
	return -EINVAL;
}