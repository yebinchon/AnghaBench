#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lock; } ;
struct rcar_drif_sdr {int /*<<< orphan*/  dev; TYPE_2__* vdev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ctrl_hdl; int /*<<< orphan*/  vb_queue_mutex; TYPE_1__ vb_queue; int /*<<< orphan*/  v4l2_mutex; } ;
struct TYPE_7__ {int device_caps; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * ctrl_handler; TYPE_1__* queue; int /*<<< orphan*/ * lock; int /*<<< orphan*/  (* release ) (TYPE_2__*) ;int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_SDR_CAPTURE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_TUNER ; 
 int /*<<< orphan*/  VFL_TYPE_SDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rcar_drif_fops ; 
 int /*<<< orphan*/  rcar_drif_ioctl_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct rcar_drif_sdr*) ; 

__attribute__((used)) static int FUNC6(struct rcar_drif_sdr *sdr)
{
	int ret;

	/* Init video_device structure */
	sdr->vdev = FUNC2();
	if (!sdr->vdev)
		return -ENOMEM;

	FUNC1(sdr->vdev->name, sizeof(sdr->vdev->name), "R-Car DRIF");
	sdr->vdev->fops = &rcar_drif_fops;
	sdr->vdev->ioctl_ops = &rcar_drif_ioctl_ops;
	sdr->vdev->release = video_device_release;
	sdr->vdev->lock = &sdr->v4l2_mutex;
	sdr->vdev->queue = &sdr->vb_queue;
	sdr->vdev->queue->lock = &sdr->vb_queue_mutex;
	sdr->vdev->ctrl_handler = &sdr->ctrl_hdl;
	sdr->vdev->v4l2_dev = &sdr->v4l2_dev;
	sdr->vdev->device_caps = V4L2_CAP_SDR_CAPTURE | V4L2_CAP_TUNER |
		V4L2_CAP_STREAMING | V4L2_CAP_READWRITE;
	FUNC5(sdr->vdev, sdr);

	/* Register V4L2 SDR device */
	ret = FUNC4(sdr->vdev, VFL_TYPE_SDR, -1);
	if (ret) {
		FUNC3(sdr->vdev);
		sdr->vdev = NULL;
		FUNC0(sdr->dev, "failed video_register_device (%d)\n", ret);
	}

	return ret;
}