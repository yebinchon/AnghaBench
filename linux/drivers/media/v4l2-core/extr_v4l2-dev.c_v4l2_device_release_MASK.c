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
struct TYPE_2__ {scalar_t__ function; } ;
struct video_device {size_t minor; scalar_t__ vfl_dir; int /*<<< orphan*/  (* release ) (struct video_device*) ;TYPE_1__ entity; int /*<<< orphan*/  intf_devnode; int /*<<< orphan*/ * cdev; struct v4l2_device* v4l2_dev; } ;
struct v4l2_device {int /*<<< orphan*/ * release; scalar_t__ mdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MEDIA_ENT_F_UNKNOWN ; 
 scalar_t__ VFL_DIR_M2M ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct video_device*) ; 
 struct video_device* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_device*) ; 
 struct video_device** video_devices ; 
 int /*<<< orphan*/  videodev_lock ; 

__attribute__((used)) static void FUNC10(struct device *cd)
{
	struct video_device *vdev = FUNC8(cd);
	struct v4l2_device *v4l2_dev = vdev->v4l2_dev;

	FUNC5(&videodev_lock);
	if (FUNC0(video_devices[vdev->minor] != vdev)) {
		/* should not happen */
		FUNC6(&videodev_lock);
		return;
	}

	/* Free up this device for reuse */
	video_devices[vdev->minor] = NULL;

	/* Delete the cdev on this minor as well */
	FUNC1(vdev->cdev);
	/* Just in case some driver tries to access this from
	   the release() callback. */
	vdev->cdev = NULL;

	/* Mark device node number as free */
	FUNC2(vdev);

	FUNC6(&videodev_lock);

#if defined(CONFIG_MEDIA_CONTROLLER)
	if (v4l2_dev->mdev && vdev->vfl_dir != VFL_DIR_M2M) {
		/* Remove interfaces and interface links */
		media_devnode_remove(vdev->intf_devnode);
		if (vdev->entity.function != MEDIA_ENT_F_UNKNOWN)
			media_device_unregister_entity(&vdev->entity);
	}
#endif

	/* Do not call v4l2_device_put if there is no release callback set.
	 * Drivers that have no v4l2_device release callback might free the
	 * v4l2_dev instance in the video_device release callback below, so we
	 * must perform this check here.
	 *
	 * TODO: In the long run all drivers that use v4l2_device should use the
	 * v4l2_device release callback. This check will then be unnecessary.
	 */
	if (v4l2_dev->release == NULL)
		v4l2_dev = NULL;

	/* Release video_device and perform other
	   cleanups as needed. */
	vdev->release(vdev);

	/* Decrease v4l2_device refcount */
	if (v4l2_dev)
		FUNC9(v4l2_dev);
}