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
struct v4l2_ctrl {int /*<<< orphan*/  name; } ;
struct ov965x {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct ov965x*,struct v4l2_ctrl*) ; 
 struct v4l2_subdev* FUNC1 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ov965x* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC1(ctrl);
	struct ov965x *ov965x = FUNC4(sd);
	int ret;

	FUNC5(1, debug, sd, "g_ctrl: %s\n", ctrl->name);

	FUNC2(&ov965x->lock);
	ret = FUNC0(ov965x, ctrl);
	FUNC3(&ov965x->lock);
	return ret;
}