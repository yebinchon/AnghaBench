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
struct v4l2_subdev {int /*<<< orphan*/  entity; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  fwnode; } ;
struct v4l2_flash {struct v4l2_subdev sd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct v4l2_flash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct v4l2_flash *v4l2_flash)
{
	struct v4l2_subdev *sd;

	if (FUNC0(v4l2_flash))
		return;

	sd = &v4l2_flash->sd;

	FUNC3(sd);

	FUNC1(sd->fwnode);

	FUNC4(sd->ctrl_handler);
	FUNC2(&sd->entity);
}