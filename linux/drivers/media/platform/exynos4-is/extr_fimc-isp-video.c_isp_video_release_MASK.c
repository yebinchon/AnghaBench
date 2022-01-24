#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct media_device* mdev; } ;
struct media_entity {int /*<<< orphan*/  use_count; TYPE_2__ graph_obj; } ;
struct media_device {int /*<<< orphan*/  graph_mutex; } ;
struct TYPE_5__ {struct media_entity entity; } ;
struct TYPE_8__ {TYPE_1__ vdev; } ;
struct fimc_is_video {TYPE_4__ ve; scalar_t__ streaming; } ;
struct fimc_isp {int /*<<< orphan*/  video_lock; TYPE_3__* pdev; struct fimc_is_video video_capture; } ;
struct file {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  close ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 struct fimc_isp* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct fimc_isp *isp = FUNC7(file);
	struct fimc_is_video *ivc = &isp->video_capture;
	struct media_entity *entity = &ivc->ve.vdev.entity;
	struct media_device *mdev = entity->graph_obj.mdev;

	FUNC2(&isp->video_lock);

	if (FUNC5(file) && ivc->streaming) {
		FUNC1(entity);
		ivc->streaming = 0;
	}

	FUNC6(file);

	if (FUNC5(file)) {
		FUNC0(&ivc->ve, close);

		FUNC2(&mdev->graph_mutex);
		entity->use_count--;
		FUNC3(&mdev->graph_mutex);
	}

	FUNC4(&isp->pdev->dev);
	FUNC3(&isp->video_lock);

	return 0;
}