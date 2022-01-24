#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * ops; } ;
struct video_device {int device_caps; TYPE_3__ entity; int /*<<< orphan*/ * lock; struct vb2_queue* queue; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/  vfl_type; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  release; int /*<<< orphan*/  name; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int /*<<< orphan*/  dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct sun6i_video* drv_priv; void* type; } ;
struct TYPE_6__ {int width; int height; int /*<<< orphan*/  field; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_7__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; void* type; int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {int flags; } ;
struct sun6i_video {int /*<<< orphan*/  lock; struct video_device vdev; struct vb2_queue vb2_vidq; scalar_t__ sequence; int /*<<< orphan*/  dma_queue_lock; int /*<<< orphan*/  dma_queue; TYPE_4__ pad; struct sun6i_csi* csi; } ;
struct sun6i_csi_buffer {int dummy; } ;
struct sun6i_csi {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MEDIA_PAD_FL_MUST_CONNECT ; 
 int MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int /*<<< orphan*/  VFL_DIR_RX ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  sun6i_csi_vb2_ops ; 
 int /*<<< orphan*/  sun6i_video_fops ; 
 int /*<<< orphan*/  sun6i_video_ioctl_ops ; 
 int /*<<< orphan*/  sun6i_video_media_ops ; 
 int /*<<< orphan*/  FUNC7 (struct sun6i_video*,struct v4l2_format*) ; 
 int /*<<< orphan*/ * supported_pixformats ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC9 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC11 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct video_device*,struct sun6i_video*) ; 

int FUNC13(struct sun6i_video *video, struct sun6i_csi *csi,
		     const char *name)
{
	struct video_device *vdev = &video->vdev;
	struct vb2_queue *vidq = &video->vb2_vidq;
	struct v4l2_format fmt = { 0 };
	int ret;

	video->csi = csi;

	/* Initialize the media entity... */
	video->pad.flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT;
	vdev->entity.ops = &sun6i_video_media_ops;
	ret = FUNC2(&vdev->entity, 1, &video->pad);
	if (ret < 0)
		return ret;

	FUNC4(&video->lock);

	FUNC0(&video->dma_queue);
	FUNC5(&video->dma_queue_lock);

	video->sequence = 0;

	/* Setup default format */
	fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	fmt.fmt.pix.pixelformat = supported_pixformats[0];
	fmt.fmt.pix.width = 1280;
	fmt.fmt.pix.height = 720;
	fmt.fmt.pix.field = V4L2_FIELD_NONE;
	FUNC7(video, &fmt);

	/* Initialize videobuf2 queue */
	vidq->type			= V4L2_BUF_TYPE_VIDEO_CAPTURE;
	vidq->io_modes			= VB2_MMAP | VB2_DMABUF;
	vidq->drv_priv			= video;
	vidq->buf_struct_size		= sizeof(struct sun6i_csi_buffer);
	vidq->ops			= &sun6i_csi_vb2_ops;
	vidq->mem_ops			= &vb2_dma_contig_memops;
	vidq->timestamp_flags		= V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	vidq->lock			= &video->lock;
	/* Make sure non-dropped frame */
	vidq->min_buffers_needed	= 3;
	vidq->dev			= csi->dev;

	ret = FUNC9(vidq);
	if (ret) {
		FUNC8(&csi->v4l2_dev, "vb2_queue_init failed: %d\n", ret);
		goto clean_entity;
	}

	/* Register video device */
	FUNC6(vdev->name, name, sizeof(vdev->name));
	vdev->release		= video_device_release_empty;
	vdev->fops		= &sun6i_video_fops;
	vdev->ioctl_ops		= &sun6i_video_ioctl_ops;
	vdev->vfl_type		= VFL_TYPE_GRABBER;
	vdev->vfl_dir		= VFL_DIR_RX;
	vdev->v4l2_dev		= &csi->v4l2_dev;
	vdev->queue		= vidq;
	vdev->lock		= &video->lock;
	vdev->device_caps	= V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE;
	FUNC12(vdev, video);

	ret = FUNC11(vdev, VFL_TYPE_GRABBER, -1);
	if (ret < 0) {
		FUNC8(&csi->v4l2_dev,
			 "video_register_device failed: %d\n", ret);
		goto release_vb2;
	}

	return 0;

release_vb2:
	FUNC10(&video->vb2_vidq);
clean_entity:
	FUNC1(&video->vdev.entity);
	FUNC3(&video->lock);
	return ret;
}