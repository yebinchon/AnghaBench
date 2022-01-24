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
struct v4l2_ctrl {int /*<<< orphan*/  val; int /*<<< orphan*/  is_int; TYPE_1__* handler; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct v4l2_ctrl*,int /*<<< orphan*/ ) ; 

int FUNC3(struct v4l2_ctrl *ctrl, s32 val)
{
	FUNC1(ctrl->handler->lock);

	/* It's a driver bug if this happens. */
	FUNC0(!ctrl->is_int);
	ctrl->val = val;
	return FUNC2(NULL, ctrl, 0);
}