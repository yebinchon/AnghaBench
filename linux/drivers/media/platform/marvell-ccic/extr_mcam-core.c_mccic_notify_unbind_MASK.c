#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct mcam_camera {int /*<<< orphan*/  s_mutex; struct v4l2_subdev* sensor; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcam_camera*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mcam_camera* FUNC4 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct v4l2_async_notifier *notifier,
	struct v4l2_subdev *subdev, struct v4l2_async_subdev *asd)
{
	struct mcam_camera *cam = FUNC4(notifier);

	FUNC2(&cam->s_mutex);
	if (cam->sensor != subdev) {
		FUNC1(cam, "sensor %s not bound\n", subdev->name);
		goto out;
	}

	FUNC5(&cam->vdev);
	cam->sensor = NULL;
	FUNC0(cam, "sensor %s unbound\n", subdev->name);

out:
	FUNC3(&cam->s_mutex);
}