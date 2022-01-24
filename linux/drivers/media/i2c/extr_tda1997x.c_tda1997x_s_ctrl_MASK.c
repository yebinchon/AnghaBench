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
struct tda1997x_state {int /*<<< orphan*/  rgb_quantization_range; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_DV_RX_RGB_RANGE 128 
 int /*<<< orphan*/  FUNC0 (struct tda1997x_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 struct v4l2_subdev* FUNC2 (struct v4l2_ctrl*) ; 
 struct tda1997x_state* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC2(ctrl);
	struct tda1997x_state *state = FUNC3(sd);

	switch (ctrl->id) {
	/* allow overriding the default RGB quantization range */
	case V4L2_CID_DV_RX_RGB_RANGE:
		state->rgb_quantization_range = ctrl->val;
		FUNC0(state);
		FUNC1(sd);
		return 0;
	}

	return -EINVAL;
}