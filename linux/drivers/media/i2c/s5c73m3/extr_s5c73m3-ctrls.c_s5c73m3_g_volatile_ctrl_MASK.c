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
struct TYPE_2__ {int /*<<< orphan*/  af_status; } ;
struct s5c73m3 {scalar_t__ power; TYPE_1__ ctrls; } ;

/* Variables and functions */
 int EBUSY ; 
#define  V4L2_CID_FOCUS_AUTO 128 
 struct v4l2_subdev* FUNC0 (struct v4l2_ctrl*) ; 
 int FUNC1 (struct s5c73m3*,int /*<<< orphan*/ ) ; 
 struct s5c73m3* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC0(ctrl);
	struct s5c73m3 *state = FUNC2(sd);
	int ret;

	if (state->power == 0)
		return -EBUSY;

	switch (ctrl->id) {
	case V4L2_CID_FOCUS_AUTO:
		ret = FUNC1(state, state->ctrls.af_status);
		if (ret)
			return ret;
		break;
	}

	return 0;
}