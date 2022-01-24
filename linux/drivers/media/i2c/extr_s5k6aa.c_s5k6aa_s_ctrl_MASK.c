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
struct v4l2_ctrl {int val; int /*<<< orphan*/  id; } ;
struct s5k6aa {scalar_t__ power; int /*<<< orphan*/  lock; TYPE_1__* preset; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_G_PREV_CFG_CHG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  REG_USER_BRIGHTNESS ; 
 int /*<<< orphan*/  REG_USER_CONTRAST ; 
 int /*<<< orphan*/  REG_USER_SATURATION ; 
 int /*<<< orphan*/  REG_USER_SHARPBLUR ; 
#define  V4L2_CID_AUTO_WHITE_BALANCE 137 
#define  V4L2_CID_BRIGHTNESS 136 
#define  V4L2_CID_COLORFX 135 
#define  V4L2_CID_CONTRAST 134 
#define  V4L2_CID_EXPOSURE_AUTO 133 
#define  V4L2_CID_HFLIP 132 
#define  V4L2_CID_POWER_LINE_FREQUENCY 131 
#define  V4L2_CID_SATURATION 130 
#define  V4L2_CID_SHARPNESS 129 
#define  V4L2_CID_WHITE_BALANCE_TEMPERATURE 128 
 struct v4l2_subdev* FUNC1 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct s5k6aa*,int) ; 
 int FUNC5 (struct s5k6aa*,int) ; 
 int FUNC6 (struct s5k6aa*,int) ; 
 int FUNC7 (struct s5k6aa*,int) ; 
 int FUNC8 (struct s5k6aa*,int) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct s5k6aa* FUNC10 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC12 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC13(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC1(ctrl);
	struct i2c_client *client = FUNC12(sd);
	struct s5k6aa *s5k6aa = FUNC10(sd);
	int idx, err = 0;

	FUNC11(1, debug, sd, "ctrl: 0x%x, value: %d\n", ctrl->id, ctrl->val);

	FUNC2(&s5k6aa->lock);
	/*
	 * If the device is not powered up by the host driver do
	 * not apply any controls to H/W at this time. Instead
	 * the controls will be restored right after power-up.
	 */
	if (s5k6aa->power == 0)
		goto unlock;
	idx = s5k6aa->preset->index;

	switch (ctrl->id) {
	case V4L2_CID_AUTO_WHITE_BALANCE:
		err = FUNC6(s5k6aa, ctrl->val);
		break;

	case V4L2_CID_BRIGHTNESS:
		err = FUNC9(client, REG_USER_BRIGHTNESS, ctrl->val);
		break;

	case V4L2_CID_COLORFX:
		err = FUNC7(s5k6aa, ctrl->val);
		break;

	case V4L2_CID_CONTRAST:
		err = FUNC9(client, REG_USER_CONTRAST, ctrl->val);
		break;

	case V4L2_CID_EXPOSURE_AUTO:
		err = FUNC5(s5k6aa, ctrl->val);
		break;

	case V4L2_CID_HFLIP:
		err = FUNC8(s5k6aa, ctrl->val);
		if (err)
			break;
		err = FUNC9(client, REG_G_PREV_CFG_CHG, 1);
		break;

	case V4L2_CID_POWER_LINE_FREQUENCY:
		err = FUNC4(s5k6aa, ctrl->val);
		break;

	case V4L2_CID_SATURATION:
		err = FUNC9(client, REG_USER_SATURATION, ctrl->val);
		break;

	case V4L2_CID_SHARPNESS:
		err = FUNC9(client, REG_USER_SHARPBLUR, ctrl->val);
		break;

	case V4L2_CID_WHITE_BALANCE_TEMPERATURE:
		err = FUNC9(client, FUNC0(idx), ctrl->val);
		if (err)
			break;
		err = FUNC9(client, REG_G_PREV_CFG_CHG, 1);
		break;
	}
unlock:
	FUNC3(&s5k6aa->lock);
	return err;
}