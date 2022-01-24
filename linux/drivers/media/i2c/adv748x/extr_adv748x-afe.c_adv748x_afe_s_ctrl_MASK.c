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
struct v4l2_ctrl {int id; int val; } ;
struct adv748x_state {int dummy; } ;
struct adv748x_afe {int dummy; } ;

/* Variables and functions */
 int ADV748X_SDP_BRI ; 
 int ADV748X_SDP_CON ; 
 int /*<<< orphan*/  ADV748X_SDP_DEF ; 
 int /*<<< orphan*/  ADV748X_SDP_DEF_VAL_EN ; 
 int /*<<< orphan*/  ADV748X_SDP_FRP ; 
 int /*<<< orphan*/  ADV748X_SDP_FRP_MASK ; 
 int ADV748X_SDP_HUE ; 
 int ADV748X_SDP_SD_SAT_U ; 
 int ADV748X_SDP_SD_SAT_V ; 
 int EINVAL ; 
#define  V4L2_CID_BRIGHTNESS 132 
#define  V4L2_CID_CONTRAST 131 
#define  V4L2_CID_HUE 130 
#define  V4L2_CID_SATURATION 129 
#define  V4L2_CID_TEST_PATTERN 128 
 struct adv748x_state* FUNC0 (struct adv748x_afe*) ; 
 struct adv748x_afe* FUNC1 (struct v4l2_ctrl*) ; 
 int FUNC2 (struct adv748x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct adv748x_state*,int,int) ; 

__attribute__((used)) static int FUNC4(struct v4l2_ctrl *ctrl)
{
	struct adv748x_afe *afe = FUNC1(ctrl);
	struct adv748x_state *state = FUNC0(afe);
	bool enable;
	int ret;

	ret = FUNC3(state, 0x0e, 0x00);
	if (ret < 0)
		return ret;

	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		ret = FUNC3(state, ADV748X_SDP_BRI, ctrl->val);
		break;
	case V4L2_CID_HUE:
		/* Hue is inverted according to HSL chart */
		ret = FUNC3(state, ADV748X_SDP_HUE, -ctrl->val);
		break;
	case V4L2_CID_CONTRAST:
		ret = FUNC3(state, ADV748X_SDP_CON, ctrl->val);
		break;
	case V4L2_CID_SATURATION:
		ret = FUNC3(state, ADV748X_SDP_SD_SAT_U, ctrl->val);
		if (ret)
			break;
		ret = FUNC3(state, ADV748X_SDP_SD_SAT_V, ctrl->val);
		break;
	case V4L2_CID_TEST_PATTERN:
		enable = !!ctrl->val;

		/* Enable/Disable Color bar test patterns */
		ret = FUNC2(state, ADV748X_SDP_DEF, ADV748X_SDP_DEF_VAL_EN,
				enable);
		if (ret)
			break;
		ret = FUNC2(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK,
				enable ? ctrl->val - 1 : 0);
		break;
	default:
		return -EINVAL;
	}

	return ret;
}