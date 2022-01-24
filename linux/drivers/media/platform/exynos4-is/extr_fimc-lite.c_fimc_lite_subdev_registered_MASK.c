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
struct video_device {int minor; int device_caps; int io_modes; int buf_struct_size; int /*<<< orphan*/  name; int /*<<< orphan*/  entity; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; struct fimc_lite* drv_priv; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; struct video_device* queue; int /*<<< orphan*/  release; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct vb2_queue {int minor; int device_caps; int io_modes; int buf_struct_size; int /*<<< orphan*/  name; int /*<<< orphan*/  entity; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; struct fimc_lite* drv_priv; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; struct vb2_queue* queue; int /*<<< orphan*/  release; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct v4l2_subdev {int /*<<< orphan*/  v4l2_dev; } ;
struct flite_buffer {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pipe; struct video_device vdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct fimc_lite {int index; TYPE_2__ ve; TYPE_3__ vd_pad; TYPE_1__* pdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  active_buf_q; int /*<<< orphan*/  pending_buf_q; scalar_t__ reqbufs_count; int /*<<< orphan*/  out_path; struct video_device vb_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIMC_IO_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ; 
 int VB2_MMAP ; 
 int VB2_USERPTR ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fimc_lite_fops ; 
 int /*<<< orphan*/  fimc_lite_ioctl_ops ; 
 int /*<<< orphan*/  fimc_lite_qops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct v4l2_subdev*) ; 
 struct fimc_lite* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC9 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct video_device*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC11 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct video_device*,struct fimc_lite*) ; 

__attribute__((used)) static int FUNC13(struct v4l2_subdev *sd)
{
	struct fimc_lite *fimc = FUNC7(sd);
	struct vb2_queue *q = &fimc->vb_queue;
	struct video_device *vfd = &fimc->ve.vdev;
	int ret;

	FUNC4(vfd, 0, sizeof(*vfd));
	FUNC1(&fimc->out_path, FIMC_IO_DMA);

	FUNC5(vfd->name, sizeof(vfd->name), "fimc-lite.%d.capture",
		 fimc->index);

	vfd->fops = &fimc_lite_fops;
	vfd->ioctl_ops = &fimc_lite_ioctl_ops;
	vfd->v4l2_dev = sd->v4l2_dev;
	vfd->minor = -1;
	vfd->release = video_device_release_empty;
	vfd->queue = q;
	vfd->device_caps = V4L2_CAP_VIDEO_CAPTURE_MPLANE | V4L2_CAP_STREAMING;
	fimc->reqbufs_count = 0;

	FUNC0(&fimc->pending_buf_q);
	FUNC0(&fimc->active_buf_q);

	FUNC4(q, 0, sizeof(*q));
	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
	q->io_modes = VB2_MMAP | VB2_USERPTR;
	q->ops = &fimc_lite_qops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->buf_struct_size = sizeof(struct flite_buffer);
	q->drv_priv = fimc;
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->lock = &fimc->lock;
	q->dev = &fimc->pdev->dev;

	ret = FUNC9(q);
	if (ret < 0)
		return ret;

	fimc->vd_pad.flags = MEDIA_PAD_FL_SINK;
	ret = FUNC3(&vfd->entity, 1, &fimc->vd_pad);
	if (ret < 0)
		return ret;

	FUNC12(vfd, fimc);
	fimc->ve.pipe = FUNC6(sd);

	ret = FUNC11(vfd, VFL_TYPE_GRABBER, -1);
	if (ret < 0) {
		FUNC2(&vfd->entity);
		fimc->ve.pipe = NULL;
		return ret;
	}

	FUNC8(sd->v4l2_dev, "Registered %s as /dev/%s\n",
		  vfd->name, FUNC10(vfd));
	return 0;
}