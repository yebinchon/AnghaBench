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
struct v4l2_ctrl {int maximum; int minimum; int menu_skip_mask; int /*<<< orphan*/  default_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl*) ; 

__attribute__((used)) static void FUNC4(struct v4l2_ctrl *ctrl, int value)
{
	if (!ctrl)
		return;

	FUNC2(ctrl);

	/*
	 * Extend the control range if the parsed stream contains a known but
	 * unsupported value or level.
	 */
	if (value > ctrl->maximum) {
		FUNC0(ctrl, ctrl->minimum, value,
			ctrl->menu_skip_mask & ~(1 << value),
			ctrl->default_value);
	} else if (value < ctrl->minimum) {
		FUNC0(ctrl, value, ctrl->maximum,
			ctrl->menu_skip_mask & ~(1 << value),
			ctrl->default_value);
	}

	FUNC1(ctrl, value);

	FUNC3(ctrl);
}