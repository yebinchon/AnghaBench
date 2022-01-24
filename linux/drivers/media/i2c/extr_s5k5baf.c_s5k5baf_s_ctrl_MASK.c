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
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; int /*<<< orphan*/  name; } ;
struct s5k5baf {scalar_t__ power; int /*<<< orphan*/  lock; int /*<<< orphan*/  apply_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_USER_BRIGHTNESS ; 
 int /*<<< orphan*/  REG_USER_CONTRAST ; 
 int /*<<< orphan*/  REG_USER_SATURATION ; 
 int /*<<< orphan*/  REG_USER_SHARPBLUR ; 
#define  V4L2_CID_AUTO_WHITE_BALANCE 138 
#define  V4L2_CID_BRIGHTNESS 137 
#define  V4L2_CID_COLORFX 136 
#define  V4L2_CID_CONTRAST 135 
#define  V4L2_CID_EXPOSURE_AUTO 134 
#define  V4L2_CID_HFLIP 133 
#define  V4L2_CID_POWER_LINE_FREQUENCY 132 
#define  V4L2_CID_SATURATION 131 
#define  V4L2_CID_SHARPNESS 130 
#define  V4L2_CID_TEST_PATTERN 129 
#define  V4L2_CID_WHITE_BALANCE_TEMPERATURE 128 
 struct v4l2_subdev* FUNC1 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC5 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC10 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC12 (struct s5k5baf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s5k5baf* FUNC13 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC1(ctrl);
	struct s5k5baf *state = FUNC13(sd);
	int ret;

	FUNC14(1, debug, sd, "ctrl: %s, value: %d\n", ctrl->name, ctrl->val);

	FUNC2(&state->lock);

	if (state->power == 0)
		goto unlock;

	switch (ctrl->id) {
	case V4L2_CID_AUTO_WHITE_BALANCE:
		FUNC7(state, ctrl->val);
		break;

	case V4L2_CID_BRIGHTNESS:
		FUNC12(state, REG_USER_BRIGHTNESS, ctrl->val);
		break;

	case V4L2_CID_COLORFX:
		FUNC8(state, ctrl->val);
		break;

	case V4L2_CID_CONTRAST:
		FUNC12(state, REG_USER_CONTRAST, ctrl->val);
		break;

	case V4L2_CID_EXPOSURE_AUTO:
		FUNC6(state, ctrl->val);
		break;

	case V4L2_CID_HFLIP:
		FUNC9(state);
		break;

	case V4L2_CID_POWER_LINE_FREQUENCY:
		FUNC5(state, ctrl->val);
		break;

	case V4L2_CID_SATURATION:
		FUNC12(state, REG_USER_SATURATION, ctrl->val);
		break;

	case V4L2_CID_SHARPNESS:
		FUNC12(state, REG_USER_SHARPBLUR, ctrl->val);
		break;

	case V4L2_CID_WHITE_BALANCE_TEMPERATURE:
		FUNC12(state, FUNC0(0), ctrl->val);
		if (state->apply_cfg)
			FUNC11(state);
		break;

	case V4L2_CID_TEST_PATTERN:
		FUNC10(state, ctrl->val);
		break;
	}
unlock:
	ret = FUNC4(state);
	FUNC3(&state->lock);
	return ret;
}