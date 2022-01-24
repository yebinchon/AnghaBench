#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  use_count; } ;
struct TYPE_4__ {TYPE_3__ entity; } ;
struct exynos_video_entity {TYPE_1__ vdev; } ;
struct fimc_vid_cap {int inh_sensor_ctrls; int /*<<< orphan*/  ctx; scalar_t__ user_subdev_api; struct exynos_video_entity ve; } ;
struct fimc_dev {int /*<<< orphan*/  lock; TYPE_2__* pdev; int /*<<< orphan*/  state; struct fimc_vid_cap vid_cap; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ST_CAPT_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fimc_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_video_entity*) ; 
 int /*<<< orphan*/  FUNC7 (struct exynos_video_entity*) ; 
 int FUNC8 (struct exynos_video_entity*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct file*) ; 
 int FUNC16 (struct file*) ; 
 int /*<<< orphan*/  FUNC17 (struct file*) ; 
 struct fimc_dev* FUNC18 (struct file*) ; 

__attribute__((used)) static int FUNC19(struct file *file)
{
	struct fimc_dev *fimc = FUNC18(file);
	struct fimc_vid_cap *vc = &fimc->vid_cap;
	struct exynos_video_entity *ve = &vc->ve;
	int ret = -EBUSY;

	FUNC1("pid: %d, state: 0x%lx", FUNC14(current), fimc->state);

	FUNC9(&fimc->lock);

	if (FUNC5(fimc))
		goto unlock;

	FUNC13(ST_CAPT_BUSY, &fimc->state);
	ret = FUNC11(&fimc->pdev->dev);
	if (ret < 0)
		goto unlock;

	ret = FUNC16(file);
	if (ret) {
		FUNC12(&fimc->pdev->dev);
		goto unlock;
	}

	if (FUNC15(file)) {
		FUNC6(ve);

		ret = FUNC8(ve, open, &ve->vdev.entity, true);

		if (ret == 0 && vc->user_subdev_api && vc->inh_sensor_ctrls) {
			/*
			 * Recreate controls of the the video node to drop
			 * any controls inherited from the sensor subdev.
			 */
			FUNC4(vc->ctx);

			ret = FUNC3(vc->ctx);
			if (ret == 0)
				vc->inh_sensor_ctrls = false;
		}
		if (ret == 0)
			ve->vdev.entity.use_count++;

		FUNC7(ve);

		if (ret == 0)
			ret = FUNC2(fimc);

		if (ret < 0) {
			FUNC0(ST_CAPT_BUSY, &fimc->state);
			FUNC12(&fimc->pdev->dev);
			FUNC17(file);
		}
	}
unlock:
	FUNC10(&fimc->lock);
	return ret;
}