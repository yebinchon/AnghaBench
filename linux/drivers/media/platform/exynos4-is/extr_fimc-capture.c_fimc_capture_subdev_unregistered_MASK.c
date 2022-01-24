#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_device {int /*<<< orphan*/  entity; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pipe; struct video_device vdev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ctx; TYPE_1__ ve; } ;
struct fimc_dev {int /*<<< orphan*/  lock; TYPE_2__ vid_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fimc_dev* FUNC6 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC7 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct video_device*) ; 

__attribute__((used)) static void FUNC9(struct v4l2_subdev *sd)
{
	struct fimc_dev *fimc = FUNC6(sd);
	struct video_device *vdev;

	if (fimc == NULL)
		return;

	FUNC4(&fimc->lock);

	FUNC1(fimc);
	vdev = &fimc->vid_cap.ve.vdev;

	if (FUNC7(vdev)) {
		FUNC8(vdev);
		FUNC3(&vdev->entity);
		FUNC0(fimc->vid_cap.ctx);
		fimc->vid_cap.ve.pipe = NULL;
	}
	FUNC2(fimc->vid_cap.ctx);
	fimc->vid_cap.ctx = NULL;

	FUNC5(&fimc->lock);
}