#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct video_device {int type; int io_modes; int buf_struct_size; int minor; int device_caps; int /*<<< orphan*/  name; int /*<<< orphan*/  entity; int /*<<< orphan*/ * lock; int /*<<< orphan*/  release; struct v4l2_device* v4l2_dev; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; struct video_device* queue; int /*<<< orphan*/ * dev; int /*<<< orphan*/  timestamp_flags; struct fimc_isp* drv_priv; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; } ;
struct vb2_queue {int type; int io_modes; int buf_struct_size; int minor; int device_caps; int /*<<< orphan*/  name; int /*<<< orphan*/  entity; int /*<<< orphan*/ * lock; int /*<<< orphan*/  release; struct v4l2_device* v4l2_dev; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; struct vb2_queue* queue; int /*<<< orphan*/ * dev; int /*<<< orphan*/  timestamp_flags; struct fimc_isp* drv_priv; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; } ;
struct v4l2_device {int dummy; } ;
struct isp_video_buf {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {struct video_device vdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct fimc_is_video {TYPE_4__ pad; TYPE_3__ ve; scalar_t__ reqbufs_count; TYPE_1__ pixfmt; TYPE_5__* format; int /*<<< orphan*/  active_buf_q; int /*<<< orphan*/  pending_buf_q; struct video_device vb_queue; } ;
struct fimc_isp {int /*<<< orphan*/  video_lock; TYPE_2__* pdev; struct fimc_is_video video_capture; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_10__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IS_DEFAULT_HEIGHT ; 
 int /*<<< orphan*/  IS_DEFAULT_WIDTH ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int VB2_MMAP ; 
 int VB2_USERPTR ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isp_video_capture_qops ; 
 int /*<<< orphan*/  isp_video_fops ; 
 int /*<<< orphan*/  isp_video_ioctl_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC8 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct video_device*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC10 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct video_device*,struct fimc_isp*) ; 

int FUNC12(struct fimc_isp *isp,
				   struct v4l2_device *v4l2_dev,
				   enum v4l2_buf_type type)
{
	struct vb2_queue *q = &isp->video_capture.vb_queue;
	struct fimc_is_video *iv;
	struct video_device *vdev;
	int ret;

	if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
		iv = &isp->video_capture;
	else
		return -ENOSYS;

	FUNC5(&isp->video_lock);
	FUNC0(&iv->pending_buf_q);
	FUNC0(&iv->active_buf_q);
	iv->format = FUNC1(NULL, NULL, 0);
	iv->pixfmt.width = IS_DEFAULT_WIDTH;
	iv->pixfmt.height = IS_DEFAULT_HEIGHT;
	iv->pixfmt.pixelformat = iv->format->fourcc;
	iv->pixfmt.colorspace = V4L2_COLORSPACE_SRGB;
	iv->reqbufs_count = 0;

	FUNC4(q, 0, sizeof(*q));
	q->type = type;
	q->io_modes = VB2_MMAP | VB2_USERPTR;
	q->ops = &isp_video_capture_qops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->buf_struct_size = sizeof(struct isp_video_buf);
	q->drv_priv = isp;
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->lock = &isp->video_lock;
	q->dev = &isp->pdev->dev;

	ret = FUNC8(q);
	if (ret < 0)
		return ret;

	vdev = &iv->ve.vdev;
	FUNC4(vdev, 0, sizeof(*vdev));
	FUNC6(vdev->name, "fimc-is-isp.capture", sizeof(vdev->name));
	vdev->queue = q;
	vdev->fops = &isp_video_fops;
	vdev->ioctl_ops = &isp_video_ioctl_ops;
	vdev->v4l2_dev = v4l2_dev;
	vdev->minor = -1;
	vdev->release = video_device_release_empty;
	vdev->lock = &isp->video_lock;
	vdev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE_MPLANE;

	iv->pad.flags = MEDIA_PAD_FL_SINK;
	ret = FUNC3(&vdev->entity, 1, &iv->pad);
	if (ret < 0)
		return ret;

	FUNC11(vdev, isp);

	ret = FUNC10(vdev, VFL_TYPE_GRABBER, -1);
	if (ret < 0) {
		FUNC2(&vdev->entity);
		return ret;
	}

	FUNC7(v4l2_dev, "Registered %s as /dev/%s\n",
		  vdev->name, FUNC9(vdev));

	return 0;
}