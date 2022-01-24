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
struct v4l2_ctrl {int id; int val; int /*<<< orphan*/  handler; } ;
struct si476x_radio {int /*<<< orphan*/  core; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* phase_div_status ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  phase_diversity; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  V4L2_CID_SI476X_INTERCHIP_LINK 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct si476x_radio* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_ctrl *ctrl)
{
	int retval;
	struct si476x_radio *radio = FUNC5(ctrl->handler);

	FUNC2(radio->core);

	switch (ctrl->id) {
	case V4L2_CID_SI476X_INTERCHIP_LINK:
		if (FUNC1(radio->core)) {
			if (radio->ops->phase_diversity) {
				retval = radio->ops->phase_div_status(radio->core);
				if (retval < 0)
					break;

				ctrl->val = !!FUNC0(retval);
				retval = 0;
				break;
			} else {
				retval = -ENOTTY;
				break;
			}
		}
		retval = -EINVAL;
		break;
	default:
		retval = -EINVAL;
		break;
	}
	FUNC3(radio->core);
	return retval;

}