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
struct TYPE_5__ {int device_caps; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * queue; } ;
struct stk1160 {int width; int height; TYPE_1__ vdev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  norm; int /*<<< orphan*/ * fmt; int /*<<< orphan*/  v4l_lock; int /*<<< orphan*/  vb_vidq; } ;

/* Variables and functions */
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_STD_NTSC_M ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/ * format ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ v4l_template ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct stk1160*) ; 

int FUNC7(struct stk1160 *dev)
{
	int rc;

	/* Initialize video_device with a template structure */
	dev->vdev = v4l_template;
	dev->vdev.queue = &dev->vb_vidq;

	/*
	 * Provide mutexes for v4l2 core and for videobuf2 queue.
	 * It will be used to protect *only* v4l2 ioctls.
	 */
	dev->vdev.lock = &dev->v4l_lock;

	/* This will be used to set video_device parent */
	dev->vdev.v4l2_dev = &dev->v4l2_dev;
	dev->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
				V4L2_CAP_READWRITE;

	/* NTSC is default */
	dev->norm = V4L2_STD_NTSC_M;
	dev->width = 720;
	dev->height = 480;

	/* set default format */
	dev->fmt = &format[0];
	FUNC1(dev);

	FUNC2(&dev->v4l2_dev, 0, video, s_std,
			dev->norm);

	FUNC6(&dev->vdev, dev);
	rc = FUNC5(&dev->vdev, VFL_TYPE_GRABBER, -1);
	if (rc < 0) {
		FUNC0("video_register_device failed (%d)\n", rc);
		return rc;
	}

	FUNC3(&dev->v4l2_dev, "V4L2 device registered as %s\n",
		  FUNC4(&dev->vdev));

	return 0;
}