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
struct video_device {int device_caps; struct v4l2_device* v4l2_dev; int /*<<< orphan*/  release; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  ctrl_handler; struct vb2_queue* queue; int /*<<< orphan*/ * lock; int /*<<< orphan*/  name; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int /*<<< orphan*/  dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct ceu_device* drv_priv; int /*<<< orphan*/  type; } ;
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; } ;
struct v4l2_device {int dummy; } ;
struct v4l2_async_notifier {struct v4l2_device* v4l2_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct ceu_device {struct vb2_queue vb2_vq; int /*<<< orphan*/  mlock; TYPE_2__* sd; scalar_t__ sd_index; TYPE_2__* subdevs; TYPE_1__ v4l2_dev; struct video_device vdev; } ;
struct ceu_buffer {int dummy; } ;
struct TYPE_4__ {struct v4l2_subdev* v4l2_sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  ceu_fops ; 
 int FUNC0 (struct ceu_device*) ; 
 int /*<<< orphan*/  ceu_ioctl_ops ; 
 int FUNC1 (struct ceu_device*) ; 
 int /*<<< orphan*/  ceu_vb2_ops ; 
 int /*<<< orphan*/  ceu_vdev_release ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_device*,char*,int) ; 
 struct ceu_device* FUNC4 (struct v4l2_device*) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC5 (struct vb2_queue*) ; 
 int FUNC6 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct video_device*,struct ceu_device*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_async_notifier *notifier)
{
	struct v4l2_device *v4l2_dev = notifier->v4l2_dev;
	struct ceu_device *ceudev = FUNC4(v4l2_dev);
	struct video_device *vdev = &ceudev->vdev;
	struct vb2_queue *q = &ceudev->vb2_vq;
	struct v4l2_subdev *v4l2_sd;
	int ret;

	/* Initialize vb2 queue. */
	q->type			= V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
	q->io_modes		= VB2_MMAP | VB2_DMABUF;
	q->drv_priv		= ceudev;
	q->ops			= &ceu_vb2_ops;
	q->mem_ops		= &vb2_dma_contig_memops;
	q->buf_struct_size	= sizeof(struct ceu_buffer);
	q->timestamp_flags	= V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->min_buffers_needed	= 2;
	q->lock			= &ceudev->mlock;
	q->dev			= ceudev->v4l2_dev.dev;

	ret = FUNC5(q);
	if (ret)
		return ret;

	/*
	 * Make sure at least one sensor is primary and use it to initialize
	 * ceu formats.
	 */
	if (!ceudev->sd) {
		ceudev->sd = &ceudev->subdevs[0];
		ceudev->sd_index = 0;
	}

	v4l2_sd = ceudev->sd->v4l2_sd;

	ret = FUNC0(ceudev);
	if (ret)
		return ret;

	ret = FUNC1(ceudev);
	if (ret)
		return ret;

	/* Register the video device. */
	FUNC2(vdev->name, DRIVER_NAME, sizeof(vdev->name));
	vdev->v4l2_dev		= v4l2_dev;
	vdev->lock		= &ceudev->mlock;
	vdev->queue		= &ceudev->vb2_vq;
	vdev->ctrl_handler	= v4l2_sd->ctrl_handler;
	vdev->fops		= &ceu_fops;
	vdev->ioctl_ops		= &ceu_ioctl_ops;
	vdev->release		= ceu_vdev_release;
	vdev->device_caps	= V4L2_CAP_VIDEO_CAPTURE_MPLANE |
				  V4L2_CAP_STREAMING;
	FUNC7(vdev, ceudev);

	ret = FUNC6(vdev, VFL_TYPE_GRABBER, -1);
	if (ret < 0) {
		FUNC3(vdev->v4l2_dev,
			 "video_register_device failed: %d\n", ret);
		return ret;
	}

	return 0;
}