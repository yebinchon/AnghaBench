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
struct fimc_lite {int streaming; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_4__* pdev; TYPE_5__ ve; int /*<<< orphan*/  out_path; } ;
struct file {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  graph_mutex; } ;

/* Variables and functions */
 scalar_t__ FIMC_IO_DMA ; 
 int /*<<< orphan*/  ST_FLITE_IN_USE ; 
 int /*<<< orphan*/  ST_FLITE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  close ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_lite*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct file*) ; 
 struct fimc_lite* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct fimc_lite *fimc = FUNC10(file);
	struct media_entity *entity = &fimc->ve.vdev.entity;

	FUNC6(&fimc->lock);

	if (FUNC9(file) &&
	    FUNC1(&fimc->out_path) == FIMC_IO_DMA) {
		if (fimc->streaming) {
			FUNC5(entity);
			fimc->streaming = false;
		}
		FUNC3(fimc, false);
		FUNC4(&fimc->ve, close);
		FUNC2(ST_FLITE_IN_USE, &fimc->state);

		FUNC6(&entity->graph_obj.mdev->graph_mutex);
		entity->use_count--;
		FUNC7(&entity->graph_obj.mdev->graph_mutex);
	}

	FUNC0(file, NULL);
	FUNC8(&fimc->pdev->dev);
	FUNC2(ST_FLITE_SUSPENDED, &fimc->state);

	FUNC7(&fimc->lock);
	return 0;
}