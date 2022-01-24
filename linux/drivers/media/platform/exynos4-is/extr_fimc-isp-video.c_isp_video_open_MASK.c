#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* mdev; } ;
struct media_entity {TYPE_5__ graph_obj; int /*<<< orphan*/  use_count; } ;
struct TYPE_7__ {struct media_entity entity; } ;
struct exynos_video_entity {TYPE_2__ vdev; } ;
struct TYPE_6__ {struct exynos_video_entity ve; } ;
struct fimc_isp {int /*<<< orphan*/  video_lock; TYPE_3__* pdev; TYPE_1__ video_capture; } ;
struct file {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  graph_mutex; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct exynos_video_entity*,int /*<<< orphan*/ ,struct media_entity*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct file*) ; 
 int FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 struct fimc_isp* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct fimc_isp *isp = FUNC8(file);
	struct exynos_video_entity *ve = &isp->video_capture.ve;
	struct media_entity *me = &ve->vdev.entity;
	int ret;

	if (FUNC2(&isp->video_lock))
		return -ERESTARTSYS;

	ret = FUNC6(file);
	if (ret < 0)
		goto unlock;

	ret = FUNC4(&isp->pdev->dev);
	if (ret < 0)
		goto rel_fh;

	if (FUNC5(file)) {
		FUNC1(&me->graph_obj.mdev->graph_mutex);

		ret = FUNC0(ve, open, me, true);

		/* Mark the video pipeline as in use. */
		if (ret == 0)
			me->use_count++;

		FUNC3(&me->graph_obj.mdev->graph_mutex);
	}
	if (!ret)
		goto unlock;
rel_fh:
	FUNC7(file);
unlock:
	FUNC3(&isp->video_lock);
	return ret;
}