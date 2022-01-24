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
struct v4l2_ext_control {scalar_t__ value64; } ;
struct v4l2_ctrl {scalar_t__ type; scalar_t__ is_ptr; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ V4L2_CTRL_TYPE_INTEGER64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl*,struct v4l2_ext_control*) ; 

s64 FUNC2(struct v4l2_ctrl *ctrl)
{
	struct v4l2_ext_control c;

	/* It's a driver bug if this happens. */
	FUNC0(ctrl->is_ptr || ctrl->type != V4L2_CTRL_TYPE_INTEGER64);
	c.value64 = 0;
	FUNC1(ctrl, &c);
	return c.value64;
}