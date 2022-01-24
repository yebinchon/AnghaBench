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
struct v4l2_subscribed_event {int /*<<< orphan*/  node; int /*<<< orphan*/  id; TYPE_1__* fh; } ;
struct v4l2_ctrl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct v4l2_ctrl* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl*) ; 

__attribute__((used)) static void FUNC4(struct v4l2_subscribed_event *sev)
{
	struct v4l2_ctrl *ctrl = FUNC1(sev->fh->ctrl_handler, sev->id);

	if (ctrl == NULL)
		return;

	FUNC2(ctrl);
	FUNC0(&sev->node);
	FUNC3(ctrl);
}