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
struct ov965x {scalar_t__ power; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUTOGAIN 136 
#define  V4L2_CID_AUTO_WHITE_BALANCE 135 
#define  V4L2_CID_BRIGHTNESS 134 
#define  V4L2_CID_EXPOSURE_AUTO 133 
#define  V4L2_CID_HFLIP 132 
#define  V4L2_CID_POWER_LINE_FREQUENCY 131 
#define  V4L2_CID_SATURATION 130 
#define  V4L2_CID_SHARPNESS 129 
#define  V4L2_CID_TEST_PATTERN 128 
 struct v4l2_subdev* FUNC0 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ov965x*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ov965x*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ov965x*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ov965x*) ; 
 int FUNC7 (struct ov965x*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ov965x*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ov965x*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ov965x*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ov965x*,int /*<<< orphan*/ ) ; 
 struct ov965x* FUNC12 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC0(ctrl);
	struct ov965x *ov965x = FUNC12(sd);
	int ret = -EINVAL;

	FUNC13(1, debug, sd, "s_ctrl: %s, value: %d. power: %d\n",
		 ctrl->name, ctrl->val, ov965x->power);

	FUNC1(&ov965x->lock);
	/*
	 * If the device is not powered up now postpone applying control's
	 * value to the hardware, until it is ready to accept commands.
	 */
	if (ov965x->power == 0) {
		FUNC2(&ov965x->lock);
		return 0;
	}

	switch (ctrl->id) {
	case V4L2_CID_AUTO_WHITE_BALANCE:
		ret = FUNC11(ov965x, ctrl->val);
		break;

	case V4L2_CID_BRIGHTNESS:
		ret = FUNC4(ov965x, ctrl->val);
		break;

	case V4L2_CID_EXPOSURE_AUTO:
		ret = FUNC5(ov965x, ctrl->val);
		break;

	case V4L2_CID_AUTOGAIN:
		ret = FUNC7(ov965x, ctrl->val);
		break;

	case V4L2_CID_HFLIP:
		ret = FUNC6(ov965x);
		break;

	case V4L2_CID_POWER_LINE_FREQUENCY:
		ret = FUNC3(ov965x, ctrl->val);
		break;

	case V4L2_CID_SATURATION:
		ret = FUNC8(ov965x, ctrl->val);
		break;

	case V4L2_CID_SHARPNESS:
		ret = FUNC9(ov965x, ctrl->val);
		break;

	case V4L2_CID_TEST_PATTERN:
		ret = FUNC10(ov965x, ctrl->val);
		break;
	}

	FUNC2(&ov965x->lock);
	return ret;
}