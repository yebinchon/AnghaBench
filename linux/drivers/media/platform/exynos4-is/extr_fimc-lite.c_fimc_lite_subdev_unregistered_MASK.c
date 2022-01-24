#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  entity; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pipe; TYPE_2__ vdev; } ;
struct fimc_lite {int /*<<< orphan*/  lock; TYPE_1__ ve; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fimc_lite* FUNC3 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct v4l2_subdev *sd)
{
	struct fimc_lite *fimc = FUNC3(sd);

	if (fimc == NULL)
		return;

	FUNC1(&fimc->lock);

	if (FUNC4(&fimc->ve.vdev)) {
		FUNC5(&fimc->ve.vdev);
		FUNC0(&fimc->ve.vdev.entity);
		fimc->ve.pipe = NULL;
	}

	FUNC2(&fimc->lock);
}