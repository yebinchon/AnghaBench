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
struct v4l2_ctrl {int val; int flags; int id; int /*<<< orphan*/  name; } ;
struct s5c73m3 {scalar_t__ power; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_WDR ; 
 int /*<<< orphan*/  COMM_ZOOM_STEP ; 
 int EINVAL ; 
#define  V4L2_CID_3A_LOCK 142 
#define  V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE 141 
#define  V4L2_CID_COLORFX 140 
#define  V4L2_CID_CONTRAST 139 
#define  V4L2_CID_EXPOSURE_AUTO 138 
#define  V4L2_CID_FOCUS_AUTO 137 
#define  V4L2_CID_IMAGE_STABILIZATION 136 
#define  V4L2_CID_ISO_SENSITIVITY 135 
#define  V4L2_CID_JPEG_COMPRESSION_QUALITY 134 
#define  V4L2_CID_POWER_LINE_FREQUENCY 133 
#define  V4L2_CID_SATURATION 132 
#define  V4L2_CID_SCENE_MODE 131 
#define  V4L2_CID_SHARPNESS 130 
#define  V4L2_CID_WIDE_DYNAMIC_RANGE 129 
#define  V4L2_CID_ZOOM_ABSOLUTE 128 
 int V4L2_CTRL_FLAG_INACTIVE ; 
 struct v4l2_subdev* FUNC0 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct s5c73m3*,struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  s5c73m3_dbg ; 
 int FUNC4 (struct s5c73m3*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct s5c73m3*,int) ; 
 int FUNC6 (struct s5c73m3*,int) ; 
 int FUNC7 (struct s5c73m3*,int) ; 
 int FUNC8 (struct s5c73m3*,int) ; 
 int FUNC9 (struct s5c73m3*,int) ; 
 int FUNC10 (struct s5c73m3*,int) ; 
 int FUNC11 (struct s5c73m3*,int) ; 
 int FUNC12 (struct s5c73m3*,int) ; 
 int FUNC13 (struct s5c73m3*,int) ; 
 int FUNC14 (struct s5c73m3*,int) ; 
 int FUNC15 (struct s5c73m3*,int) ; 
 int FUNC16 (struct s5c73m3*,int) ; 
 struct s5c73m3* FUNC17 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC0(ctrl);
	struct s5c73m3 *state = FUNC17(sd);
	int ret = 0;

	FUNC18(1, s5c73m3_dbg, sd, "set_ctrl: %s, value: %d\n",
		 ctrl->name, ctrl->val);

	FUNC1(&state->lock);
	/*
	 * If the device is not powered up by the host driver do
	 * not apply any controls to H/W at this time. Instead
	 * the controls will be restored right after power-up.
	 */
	if (state->power == 0)
		goto unlock;

	if (ctrl->flags & V4L2_CTRL_FLAG_INACTIVE) {
		ret = -EINVAL;
		goto unlock;
	}

	switch (ctrl->id) {
	case V4L2_CID_3A_LOCK:
		ret = FUNC3(state, ctrl);
		break;

	case V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE:
		ret = FUNC16(state, ctrl->val);
		break;

	case V4L2_CID_CONTRAST:
		ret = FUNC7(state, ctrl->val);
		break;

	case V4L2_CID_COLORFX:
		ret = FUNC6(state, ctrl->val);
		break;

	case V4L2_CID_EXPOSURE_AUTO:
		ret = FUNC8(state, ctrl->val);
		break;

	case V4L2_CID_FOCUS_AUTO:
		ret = FUNC5(state, ctrl->val);
		break;

	case V4L2_CID_IMAGE_STABILIZATION:
		ret = FUNC15(state, ctrl->val);
		break;

	case V4L2_CID_ISO_SENSITIVITY:
		ret = FUNC9(state, ctrl->val);
		break;

	case V4L2_CID_JPEG_COMPRESSION_QUALITY:
		ret = FUNC10(state, ctrl->val);
		break;

	case V4L2_CID_POWER_LINE_FREQUENCY:
		ret = FUNC11(state, ctrl->val);
		break;

	case V4L2_CID_SATURATION:
		ret = FUNC12(state, ctrl->val);
		break;

	case V4L2_CID_SCENE_MODE:
		ret = FUNC13(state, ctrl->val);
		break;

	case V4L2_CID_SHARPNESS:
		ret = FUNC14(state, ctrl->val);
		break;

	case V4L2_CID_WIDE_DYNAMIC_RANGE:
		ret = FUNC4(state, COMM_WDR, !!ctrl->val);
		break;

	case V4L2_CID_ZOOM_ABSOLUTE:
		ret = FUNC4(state, COMM_ZOOM_STEP, ctrl->val);
		break;
	}
unlock:
	FUNC2(&state->lock);
	return ret;
}