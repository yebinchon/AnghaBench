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
struct v4l2_ctrl {int id; } ;
struct ov2680_ctrls {TYPE_2__* exposure; TYPE_1__* gain; } ;
struct ov2680_dev {int /*<<< orphan*/  is_enabled; struct ov2680_ctrls ctrls; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;

/* Variables and functions */
#define  V4L2_CID_EXPOSURE 129 
#define  V4L2_CID_GAIN 128 
 struct v4l2_subdev* FUNC0 (struct v4l2_ctrl*) ; 
 int FUNC1 (struct ov2680_dev*) ; 
 int FUNC2 (struct ov2680_dev*) ; 
 struct ov2680_dev* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC0(ctrl);
	struct ov2680_dev *sensor = FUNC3(sd);
	struct ov2680_ctrls *ctrls = &sensor->ctrls;
	int val;

	if (!sensor->is_enabled)
		return 0;

	switch (ctrl->id) {
	case V4L2_CID_GAIN:
		val = FUNC2(sensor);
		if (val < 0)
			return val;
		ctrls->gain->val = val;
		break;
	case V4L2_CID_EXPOSURE:
		val = FUNC1(sensor);
		if (val < 0)
			return val;
		ctrls->exposure->val = val;
		break;
	}

	return 0;
}