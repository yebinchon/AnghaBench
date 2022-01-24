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
struct v4l2_ctrl {int id; int val; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25840_state*) ; 
 struct v4l2_subdev* FUNC2 (struct v4l2_ctrl*) ; 
 struct cx25840_state* FUNC3 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC2(ctrl);
	struct cx25840_state *state = FUNC3(sd);
	struct i2c_client *client = FUNC4(sd);

	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		FUNC0(client, 0x414, ctrl->val - 128);
		break;

	case V4L2_CID_CONTRAST:
		FUNC0(client, 0x415, ctrl->val << 1);
		break;

	case V4L2_CID_SATURATION:
		if (FUNC1(state)) {
			FUNC0(client, 0x418, ctrl->val << 1);
			FUNC0(client, 0x419, ctrl->val << 1);
		} else {
			FUNC0(client, 0x420, ctrl->val << 1);
			FUNC0(client, 0x421, ctrl->val << 1);
		}
		break;

	case V4L2_CID_HUE:
		if (FUNC1(state))
			FUNC0(client, 0x41a, ctrl->val);
		else
			FUNC0(client, 0x422, ctrl->val);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}