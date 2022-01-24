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
struct v4l2_fh {int dummy; } ;
struct v4l2_ext_control {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_ext_control*,struct v4l2_ctrl*) ; 
 int FUNC1 (struct v4l2_fh*,struct v4l2_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ext_control*,struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_fh *fh, struct v4l2_ctrl *ctrl,
			 struct v4l2_ext_control *c)
{
	int ret;

	FUNC3(ctrl);
	FUNC2(c, ctrl);
	ret = FUNC1(fh, ctrl, 0);
	if (!ret)
		FUNC0(c, ctrl);
	FUNC4(ctrl);
	return ret;
}