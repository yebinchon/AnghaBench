#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int device_caps; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; } ;
struct stk_camera {TYPE_1__ vdev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ stk_v4l_data ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct stk_camera*) ; 

__attribute__((used)) static int FUNC5(struct stk_camera *dev)
{
	int err;

	dev->vdev = stk_v4l_data;
	dev->vdev.lock = &dev->lock;
	dev->vdev.v4l2_dev = &dev->v4l2_dev;
	dev->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
				V4L2_CAP_STREAMING;
	FUNC4(&dev->vdev, dev);
	err = FUNC3(&dev->vdev, VFL_TYPE_GRABBER, -1);
	if (err)
		FUNC0("v4l registration failed\n");
	else
		FUNC1("Syntek USB2.0 Camera is now controlling device %s\n",
			FUNC2(&dev->vdev));
	return err;
}