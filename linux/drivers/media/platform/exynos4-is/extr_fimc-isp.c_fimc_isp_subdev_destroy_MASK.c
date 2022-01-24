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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct TYPE_2__ {int /*<<< orphan*/  handler; } ;
struct fimc_isp {TYPE_1__ ctrls; struct v4l2_subdev subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

void FUNC4(struct fimc_isp *isp)
{
	struct v4l2_subdev *sd = &isp->subdev;

	FUNC2(sd);
	FUNC0(&sd->entity);
	FUNC1(&isp->ctrls.handler);
	FUNC3(sd, NULL);
}