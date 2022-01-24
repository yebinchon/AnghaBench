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
struct TYPE_5__ {int /*<<< orphan*/  entity; } ;
struct exynos_video_entity {int /*<<< orphan*/ * pipe; TYPE_2__ vdev; } ;
struct TYPE_4__ {struct exynos_video_entity ve; } ;
struct fimc_isp {int /*<<< orphan*/  video_lock; TYPE_1__ video_capture; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(struct fimc_isp *isp,
				      enum v4l2_buf_type type)
{
	struct exynos_video_entity *ve;

	if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
		ve = &isp->video_capture.ve;
	else
		return;

	FUNC1(&isp->video_lock);

	if (FUNC3(&ve->vdev)) {
		FUNC4(&ve->vdev);
		FUNC0(&ve->vdev.entity);
		ve->pipe = NULL;
	}

	FUNC2(&isp->video_lock);
}