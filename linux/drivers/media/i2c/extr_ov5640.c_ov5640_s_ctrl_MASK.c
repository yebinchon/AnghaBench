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
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;
struct ov5640_dev {scalar_t__ power_count; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUTOGAIN 137 
#define  V4L2_CID_AUTO_WHITE_BALANCE 136 
#define  V4L2_CID_CONTRAST 135 
#define  V4L2_CID_EXPOSURE_AUTO 134 
#define  V4L2_CID_HFLIP 133 
#define  V4L2_CID_HUE 132 
#define  V4L2_CID_POWER_LINE_FREQUENCY 131 
#define  V4L2_CID_SATURATION 130 
#define  V4L2_CID_TEST_PATTERN 129 
#define  V4L2_CID_VFLIP 128 
 struct v4l2_subdev* FUNC0 (struct v4l2_ctrl*) ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 struct ov5640_dev* FUNC11 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC12(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC0(ctrl);
	struct ov5640_dev *sensor = FUNC11(sd);
	int ret;

	/* v4l2_ctrl_lock() locks our own mutex */

	/*
	 * If the device is not powered up by the host driver do
	 * not apply any controls to H/W at this time. Instead
	 * the controls will be restored right after power-up.
	 */
	if (sensor->power_count == 0)
		return 0;

	switch (ctrl->id) {
	case V4L2_CID_AUTOGAIN:
		ret = FUNC3(sensor, ctrl->val);
		break;
	case V4L2_CID_EXPOSURE_AUTO:
		ret = FUNC2(sensor, ctrl->val);
		break;
	case V4L2_CID_AUTO_WHITE_BALANCE:
		ret = FUNC10(sensor, ctrl->val);
		break;
	case V4L2_CID_HUE:
		ret = FUNC5(sensor, ctrl->val);
		break;
	case V4L2_CID_CONTRAST:
		ret = FUNC1(sensor, ctrl->val);
		break;
	case V4L2_CID_SATURATION:
		ret = FUNC7(sensor, ctrl->val);
		break;
	case V4L2_CID_TEST_PATTERN:
		ret = FUNC8(sensor, ctrl->val);
		break;
	case V4L2_CID_POWER_LINE_FREQUENCY:
		ret = FUNC6(sensor, ctrl->val);
		break;
	case V4L2_CID_HFLIP:
		ret = FUNC4(sensor, ctrl->val);
		break;
	case V4L2_CID_VFLIP:
		ret = FUNC9(sensor, ctrl->val);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}