#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;
struct ov2680_ctrls {TYPE_2__* auto_exp; TYPE_1__* auto_gain; } ;
struct ov2680_dev {int /*<<< orphan*/  is_streaming; int /*<<< orphan*/  is_enabled; struct ov2680_ctrls ctrls; } ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  V4L2_CID_AUTOGAIN 134 
#define  V4L2_CID_EXPOSURE 133 
#define  V4L2_CID_EXPOSURE_AUTO 132 
#define  V4L2_CID_GAIN 131 
#define  V4L2_CID_HFLIP 130 
#define  V4L2_CID_TEST_PATTERN 129 
#define  V4L2_CID_VFLIP 128 
 struct v4l2_subdev* FUNC0 (struct v4l2_ctrl*) ; 
 int FUNC1 (struct ov2680_dev*,int) ; 
 int FUNC2 (struct ov2680_dev*,int) ; 
 int FUNC3 (struct ov2680_dev*) ; 
 int FUNC4 (struct ov2680_dev*) ; 
 int FUNC5 (struct ov2680_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ov2680_dev*) ; 
 int FUNC7 (struct ov2680_dev*) ; 
 struct ov2680_dev* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC0(ctrl);
	struct ov2680_dev *sensor = FUNC8(sd);
	struct ov2680_ctrls *ctrls = &sensor->ctrls;

	if (!sensor->is_enabled)
		return 0;

	switch (ctrl->id) {
	case V4L2_CID_AUTOGAIN:
		return FUNC2(sensor, !!ctrl->val);
	case V4L2_CID_GAIN:
		return FUNC2(sensor, !!ctrls->auto_gain->val);
	case V4L2_CID_EXPOSURE_AUTO:
		return FUNC1(sensor, !!ctrl->val);
	case V4L2_CID_EXPOSURE:
		return FUNC1(sensor, !!ctrls->auto_exp->val);
	case V4L2_CID_VFLIP:
		if (sensor->is_streaming)
			return -EBUSY;
		if (ctrl->val)
			return FUNC7(sensor);
		else
			return FUNC6(sensor);
	case V4L2_CID_HFLIP:
		if (sensor->is_streaming)
			return -EBUSY;
		if (ctrl->val)
			return FUNC4(sensor);
		else
			return FUNC3(sensor);
	case V4L2_CID_TEST_PATTERN:
		return FUNC5(sensor, ctrl->val);
	default:
		break;
	}

	return -EINVAL;
}