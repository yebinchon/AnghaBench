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
struct TYPE_8__ {TYPE_2__* mdev; } ;
struct media_entity {TYPE_3__ graph_obj; int /*<<< orphan*/  use_count; } ;
struct TYPE_6__ {struct media_entity entity; } ;
struct TYPE_10__ {TYPE_1__ vdev; } ;
struct fimc_lite {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_4__* pdev; TYPE_5__ ve; int /*<<< orphan*/  out_path; } ;
struct file {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  graph_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FIMC_IO_DMA ; 
 int /*<<< orphan*/  ST_FLITE_IN_USE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_lite*) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,struct media_entity*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 int FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 struct fimc_lite* FUNC12 (struct file*) ; 

__attribute__((used)) static int FUNC13(struct file *file)
{
	struct fimc_lite *fimc = FUNC12(file);
	struct media_entity *me = &fimc->ve.vdev.entity;
	int ret;

	FUNC4(&fimc->lock);
	if (FUNC0(&fimc->out_path) != FIMC_IO_DMA) {
		ret = -EBUSY;
		goto unlock;
	}

	FUNC8(ST_FLITE_IN_USE, &fimc->state);
	ret = FUNC6(&fimc->pdev->dev);
	if (ret < 0)
		goto unlock;

	ret = FUNC10(file);
	if (ret < 0)
		goto err_pm;

	if (!FUNC9(file) ||
	    FUNC0(&fimc->out_path) != FIMC_IO_DMA)
		goto unlock;

	FUNC4(&me->graph_obj.mdev->graph_mutex);

	ret = FUNC3(&fimc->ve, open, me, true);

	/* Mark video pipeline ending at this video node as in use. */
	if (ret == 0)
		me->use_count++;

	FUNC5(&me->graph_obj.mdev->graph_mutex);

	if (!ret) {
		FUNC2(fimc);
		goto unlock;
	}

	FUNC11(file);
err_pm:
	FUNC7(&fimc->pdev->dev);
	FUNC1(ST_FLITE_IN_USE, &fimc->state);
unlock:
	FUNC5(&fimc->lock);
	return ret;
}