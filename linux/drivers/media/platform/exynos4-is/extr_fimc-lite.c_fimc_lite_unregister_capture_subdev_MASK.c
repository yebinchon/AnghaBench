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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct fimc_lite {int /*<<< orphan*/  ctrl_handler; struct v4l2_subdev subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fimc_lite *fimc)
{
	struct v4l2_subdev *sd = &fimc->subdev;

	FUNC2(sd);
	FUNC0(&sd->entity);
	FUNC1(&fimc->ctrl_handler);
	FUNC3(sd, NULL);
}