#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ctrl_handler; } ;
struct video_device {int device_caps; int /*<<< orphan*/ * lock; struct vb2_queue* queue; int /*<<< orphan*/  vfl_dir; TYPE_4__* v4l2_dev; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  release; int /*<<< orphan*/  name; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int /*<<< orphan*/  dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct vpfe_device* drv_priv; void* type; } ;
struct TYPE_5__ {void* type; } ;
struct vpfe_device {TYPE_4__ v4l2_dev; struct video_device video_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  dma_queue; int /*<<< orphan*/  pdev; struct vb2_queue buffer_queue; TYPE_3__** sd; TYPE_2__* cfg; int /*<<< orphan*/ * current_subdev; TYPE_1__ fmt; int /*<<< orphan*/  dma_queue_lock; } ;
struct vpfe_cap_buffer {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ctrl_handler; } ;
struct TYPE_6__ {int /*<<< orphan*/ * sub_devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int /*<<< orphan*/  VFL_DIR_RX ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VPFE_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC5 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC6 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct video_device*,struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct vpfe_device*,char*) ; 
 int /*<<< orphan*/  vpfe_fops ; 
 int /*<<< orphan*/  vpfe_ioctl_ops ; 
 int FUNC9 (struct vpfe_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vpfe_video_qops ; 

__attribute__((used)) static int FUNC10(struct vpfe_device *vpfe)
{
	struct video_device *vdev;
	struct vb2_queue *q;
	int err;

	FUNC2(&vpfe->dma_queue_lock);
	FUNC1(&vpfe->lock);

	vpfe->fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

	/* set first sub device as current one */
	vpfe->current_subdev = &vpfe->cfg->sub_devs[0];
	vpfe->v4l2_dev.ctrl_handler = vpfe->sd[0]->ctrl_handler;

	err = FUNC9(vpfe, 0);
	if (err)
		goto probe_out;

	/* Initialize videobuf2 queue as per the buffer type */
	q = &vpfe->buffer_queue;
	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	q->io_modes = VB2_MMAP | VB2_DMABUF | VB2_READ;
	q->drv_priv = vpfe;
	q->ops = &vpfe_video_qops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->buf_struct_size = sizeof(struct vpfe_cap_buffer);
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->lock = &vpfe->lock;
	q->min_buffers_needed = 1;
	q->dev = vpfe->pdev;

	err = FUNC5(q);
	if (err) {
		FUNC8(vpfe, "vb2_queue_init() failed\n");
		goto probe_out;
	}

	FUNC0(&vpfe->dma_queue);

	vdev = &vpfe->video_dev;
	FUNC3(vdev->name, VPFE_MODULE_NAME, sizeof(vdev->name));
	vdev->release = video_device_release_empty;
	vdev->fops = &vpfe_fops;
	vdev->ioctl_ops = &vpfe_ioctl_ops;
	vdev->v4l2_dev = &vpfe->v4l2_dev;
	vdev->vfl_dir = VFL_DIR_RX;
	vdev->queue = q;
	vdev->lock = &vpfe->lock;
	vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
			    V4L2_CAP_READWRITE;
	FUNC7(vdev, vpfe);
	err = FUNC6(&vpfe->video_dev, VFL_TYPE_GRABBER, -1);
	if (err) {
		FUNC8(vpfe,
			"Unable to register video device.\n");
		goto probe_out;
	}

	return 0;

probe_out:
	FUNC4(&vpfe->v4l2_dev);
	return err;
}