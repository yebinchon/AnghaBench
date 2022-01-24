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
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; int /*<<< orphan*/  name; } ;
struct fimc_isp {int /*<<< orphan*/  subdev; } ;
struct fimc_is {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ISP_ADJUST_COMMAND_MANUAL_BRIGHTNESS ; 
 int /*<<< orphan*/  ISP_ADJUST_COMMAND_MANUAL_CONTRAST ; 
 int /*<<< orphan*/  ISP_ADJUST_COMMAND_MANUAL_EXPOSURE ; 
 int /*<<< orphan*/  ISP_ADJUST_COMMAND_MANUAL_HUE ; 
 int /*<<< orphan*/  ISP_ADJUST_COMMAND_MANUAL_SATURATION ; 
 int /*<<< orphan*/  ISP_ADJUST_COMMAND_MANUAL_SHARPNESS ; 
 int /*<<< orphan*/  IS_ST_STREAM_ON ; 
#define  V4L2_CID_3A_LOCK 139 
#define  V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE 138 
#define  V4L2_CID_BRIGHTNESS 137 
#define  V4L2_CID_COLORFX 136 
#define  V4L2_CID_CONTRAST 135 
#define  V4L2_CID_EXPOSURE_ABSOLUTE 134 
#define  V4L2_CID_EXPOSURE_METERING 133 
#define  V4L2_CID_HUE 132 
#define  V4L2_CID_ISO_SENSITIVITY_AUTO 131 
#define  V4L2_CID_POWER_LINE_FREQUENCY 130 
#define  V4L2_CID_SATURATION 129 
#define  V4L2_CID_SHARPNESS 128 
 int FUNC0 (struct fimc_is*,struct v4l2_ctrl*) ; 
 int FUNC1 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_is*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fimc_isp* FUNC7 (struct v4l2_ctrl*) ; 
 int FUNC8 (struct fimc_is*,int) ; 
 struct fimc_is* FUNC9 (struct fimc_isp*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct v4l2_ctrl *ctrl)
{
	struct fimc_isp *isp = FUNC7(ctrl);
	struct fimc_is *is = FUNC9(isp);
	bool set_param = true;
	int ret = 0;

	switch (ctrl->id) {
	case V4L2_CID_CONTRAST:
		FUNC6(is, ISP_ADJUST_COMMAND_MANUAL_CONTRAST,
				    ctrl->val);
		break;

	case V4L2_CID_SATURATION:
		FUNC6(is, ISP_ADJUST_COMMAND_MANUAL_SATURATION,
				    ctrl->val);
		break;

	case V4L2_CID_SHARPNESS:
		FUNC6(is, ISP_ADJUST_COMMAND_MANUAL_SHARPNESS,
				    ctrl->val);
		break;

	case V4L2_CID_EXPOSURE_ABSOLUTE:
		FUNC6(is, ISP_ADJUST_COMMAND_MANUAL_EXPOSURE,
				    ctrl->val);
		break;

	case V4L2_CID_BRIGHTNESS:
		FUNC6(is, ISP_ADJUST_COMMAND_MANUAL_BRIGHTNESS,
				    ctrl->val);
		break;

	case V4L2_CID_HUE:
		FUNC6(is, ISP_ADJUST_COMMAND_MANUAL_HUE,
				    ctrl->val);
		break;

	case V4L2_CID_EXPOSURE_METERING:
		ret = FUNC4(is, ctrl->val);
		break;

	case V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE:
		ret = FUNC5(is, ctrl->val);
		break;

	case V4L2_CID_3A_LOCK:
		ret = FUNC0(is, ctrl);
		set_param = false;
		break;

	case V4L2_CID_ISO_SENSITIVITY_AUTO:
		ret = FUNC3(is, ctrl->val);
		break;

	case V4L2_CID_POWER_LINE_FREQUENCY:
		ret = FUNC1(is, ctrl->val);
		break;

	case V4L2_CID_COLORFX:
		FUNC2(is, ctrl->val);
		break;

	default:
		ret = -EINVAL;
		break;
	}

	if (ret < 0) {
		FUNC11(&isp->subdev, "Failed to set control: %s (%d)\n",
						ctrl->name, ctrl->val);
		return ret;
	}

	if (set_param && FUNC10(IS_ST_STREAM_ON, &is->state))
		return FUNC8(is, true);

	return 0;
}