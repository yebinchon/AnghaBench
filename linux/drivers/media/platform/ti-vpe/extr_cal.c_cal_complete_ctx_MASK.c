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
struct video_device {int /*<<< orphan*/ * lock; struct vb2_queue* queue; TYPE_2__* v4l2_dev; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int /*<<< orphan*/  dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct cal_ctx* drv_priv; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  active; } ;
struct cal_ctx {int external_rate; TYPE_2__ v4l2_dev; int /*<<< orphan*/  mutex; struct video_device vdev; TYPE_1__ vidq; struct vb2_queue vb_vidq; int /*<<< orphan*/  slock; int /*<<< orphan*/  timeperframe; } ;
struct cal_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  cal_video_qops ; 
 struct video_device cal_videodev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpf_default ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC4 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct video_device*) ; 
 int /*<<< orphan*/  video_nr ; 
 int FUNC6 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct video_device*,struct cal_ctx*) ; 

__attribute__((used)) static int FUNC8(struct cal_ctx *ctx)
{
	struct video_device *vfd;
	struct vb2_queue *q;
	int ret;

	ctx->timeperframe = tpf_default;
	ctx->external_rate = 192000000;

	/* initialize locks */
	FUNC2(&ctx->slock);
	FUNC1(&ctx->mutex);

	/* initialize queue */
	q = &ctx->vb_vidq;
	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	q->io_modes = VB2_MMAP | VB2_DMABUF | VB2_READ;
	q->drv_priv = ctx;
	q->buf_struct_size = sizeof(struct cal_buffer);
	q->ops = &cal_video_qops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->lock = &ctx->mutex;
	q->min_buffers_needed = 3;
	q->dev = ctx->v4l2_dev.dev;

	ret = FUNC4(q);
	if (ret)
		return ret;

	/* init video dma queues */
	FUNC0(&ctx->vidq.active);

	vfd = &ctx->vdev;
	*vfd = cal_videodev;
	vfd->v4l2_dev = &ctx->v4l2_dev;
	vfd->queue = q;

	/*
	 * Provide a mutex to v4l2 core. It will be used to protect
	 * all fops and v4l2 ioctls.
	 */
	vfd->lock = &ctx->mutex;
	FUNC7(vfd, ctx);

	ret = FUNC6(vfd, VFL_TYPE_GRABBER, video_nr);
	if (ret < 0)
		return ret;

	FUNC3(&ctx->v4l2_dev, "V4L2 device registered as %s\n",
		  FUNC5(vfd));

	return 0;
}