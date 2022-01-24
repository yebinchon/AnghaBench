#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct video_device {int device_caps; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/ * lock; int /*<<< orphan*/  release; int /*<<< orphan*/  name; int /*<<< orphan*/ * queue; TYPE_2__* v4l2_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  notify; } ;
struct TYPE_6__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct rvin_dev {int id; struct video_device vdev; TYPE_2__ v4l2_dev; TYPE_3__ format; TYPE_1__* info; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {scalar_t__ use_mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  RVIN_DEFAULT_COLORSPACE ; 
 int /*<<< orphan*/  RVIN_DEFAULT_FIELD ; 
 int /*<<< orphan*/  RVIN_DEFAULT_FORMAT ; 
 int /*<<< orphan*/  RVIN_DEFAULT_HEIGHT ; 
 int /*<<< orphan*/  RVIN_DEFAULT_WIDTH ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  rvin_fops ; 
 int /*<<< orphan*/  FUNC0 (struct rvin_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  rvin_ioctl_ops ; 
 int /*<<< orphan*/  rvin_mc_ioctl_ops ; 
 int /*<<< orphan*/  rvin_notify ; 
 int /*<<< orphan*/  FUNC1 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC5 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct video_device*,struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rvin_dev*,char*) ; 

int FUNC8(struct rvin_dev *vin)
{
	struct video_device *vdev = &vin->vdev;
	int ret;

	vin->v4l2_dev.notify = rvin_notify;

	/* video node */
	vdev->v4l2_dev = &vin->v4l2_dev;
	vdev->queue = &vin->queue;
	FUNC2(vdev->name, sizeof(vdev->name), "VIN%u output", vin->id);
	vdev->release = video_device_release_empty;
	vdev->lock = &vin->lock;
	vdev->fops = &rvin_fops;
	vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
		V4L2_CAP_READWRITE;

	/* Set a default format */
	vin->format.pixelformat	= RVIN_DEFAULT_FORMAT;
	vin->format.width = RVIN_DEFAULT_WIDTH;
	vin->format.height = RVIN_DEFAULT_HEIGHT;
	vin->format.field = RVIN_DEFAULT_FIELD;
	vin->format.colorspace = RVIN_DEFAULT_COLORSPACE;

	if (vin->info->use_mc) {
		vdev->ioctl_ops = &rvin_mc_ioctl_ops;
	} else {
		vdev->ioctl_ops = &rvin_ioctl_ops;
		FUNC1(vin);
	}

	FUNC0(vin, &vin->format);

	ret = FUNC5(&vin->vdev, VFL_TYPE_GRABBER, -1);
	if (ret) {
		FUNC7(vin, "Failed to register video device\n");
		return ret;
	}

	FUNC6(&vin->vdev, vin);

	FUNC3(&vin->v4l2_dev, "Device registered as %s\n",
		  FUNC4(&vin->vdev));

	return ret;
}