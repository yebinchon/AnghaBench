#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * queue; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * v4l2_dev; } ;
struct mcam_camera {int /*<<< orphan*/  s_mutex; struct v4l2_subdev* sensor; TYPE_1__ vdev; int /*<<< orphan*/  vb_queue; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC0 (struct mcam_camera*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*,char*) ; 
 int FUNC2 (struct mcam_camera*) ; 
 int FUNC3 (struct mcam_camera*) ; 
 TYPE_1__ mcam_v4l_template ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mcam_camera* FUNC6 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct mcam_camera*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct mcam_camera*) ; 

__attribute__((used)) static int FUNC10(struct v4l2_async_notifier *notifier,
	struct v4l2_subdev *subdev, struct v4l2_async_subdev *asd)
{
	struct mcam_camera *cam = FUNC6(notifier);
	int ret;

	FUNC4(&cam->s_mutex);
	if (cam->sensor) {
		FUNC1(cam, "sensor already bound\n");
		ret = -EBUSY;
		goto out;
	}

	FUNC7(subdev, cam);
	cam->sensor = subdev;

	ret = FUNC2(cam);
	if (ret) {
		cam->sensor = NULL;
		goto out;
	}

	ret = FUNC3(cam);
	if (ret) {
		cam->sensor = NULL;
		goto out;
	}

	cam->vdev = mcam_v4l_template;
	cam->vdev.v4l2_dev = &cam->v4l2_dev;
	cam->vdev.lock = &cam->s_mutex;
	cam->vdev.queue = &cam->vb_queue;
	FUNC9(&cam->vdev, cam);
	ret = FUNC8(&cam->vdev, VFL_TYPE_GRABBER, -1);
	if (ret) {
		cam->sensor = NULL;
		goto out;
	}

	FUNC0(cam, "sensor %s bound\n", subdev->name);
out:
	FUNC5(&cam->s_mutex);
	return ret;
}