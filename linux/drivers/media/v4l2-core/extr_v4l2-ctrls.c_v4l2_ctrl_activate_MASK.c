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
struct v4l2_ctrl {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_EVENT_CTRL_CH_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct v4l2_ctrl*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 

void FUNC3(struct v4l2_ctrl *ctrl, bool active)
{
	/* invert since the actual flag is called 'inactive' */
	bool inactive = !active;
	bool old;

	if (ctrl == NULL)
		return;

	if (inactive)
		/* set V4L2_CTRL_FLAG_INACTIVE */
		old = FUNC2(4, &ctrl->flags);
	else
		/* clear V4L2_CTRL_FLAG_INACTIVE */
		old = FUNC1(4, &ctrl->flags);
	if (old != inactive)
		FUNC0(NULL, ctrl, V4L2_EVENT_CTRL_CH_FLAGS);
}