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
struct TYPE_2__ {scalar_t__ use_count; } ;
struct video_device {TYPE_1__ entity; } ;
struct media_entity {int dummy; } ;
struct fimc_pipeline {int /*<<< orphan*/ ** subdevs; } ;
struct exynos_video_entity {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 size_t IDX_SENSOR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct media_entity*,int) ; 
 struct video_device* FUNC2 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 struct fimc_pipeline* FUNC4 (int /*<<< orphan*/ ) ; 
 struct exynos_video_entity* FUNC5 (struct video_device*) ; 

__attribute__((used)) static int FUNC6(struct media_entity *entity, bool enable)
{
	struct exynos_video_entity *ve;
	struct fimc_pipeline *p;
	struct video_device *vdev;
	int ret;

	vdev = FUNC2(entity);
	if (vdev->entity.use_count == 0)
		return 0;

	ve = FUNC5(vdev);
	p = FUNC4(ve->pipe);
	/*
	 * Nothing to do if we are disabling the pipeline, some link
	 * has been disconnected and p->subdevs array is cleared now.
	 */
	if (!enable && p->subdevs[IDX_SENSOR] == NULL)
		return 0;

	if (enable)
		ret = FUNC1(ve->pipe, entity, true);
	else
		ret = FUNC0(ve->pipe);

	if (ret == 0 && !enable)
		FUNC3(p->subdevs, 0, sizeof(p->subdevs));

	return ret;
}