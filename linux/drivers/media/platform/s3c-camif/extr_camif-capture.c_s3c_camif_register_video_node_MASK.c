#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct video_device {int minor; int io_modes; int buf_struct_size; int device_caps; int /*<<< orphan*/  entity; int /*<<< orphan*/  name; TYPE_3__* ctrl_handler; int /*<<< orphan*/  dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; struct camif_vp* drv_priv; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; int /*<<< orphan*/  release; TYPE_2__* v4l2_dev; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct vb2_queue {int minor; int io_modes; int buf_struct_size; int device_caps; int /*<<< orphan*/  entity; int /*<<< orphan*/  name; TYPE_3__* ctrl_handler; int /*<<< orphan*/  dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; struct camif_vp* drv_priv; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; int /*<<< orphan*/  release; TYPE_2__* v4l2_dev; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct v4l2_ctrl {struct camif_vp* priv; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct camif_vp {scalar_t__ id; TYPE_3__ ctrl_handler; TYPE_6__ pad; TYPE_1__* camif; int /*<<< orphan*/  active_buf_q; int /*<<< orphan*/  pending_buf_q; scalar_t__ reqbufs_count; struct video_device vdev; struct video_device vb_queue; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct camif_dev {TYPE_2__ v4l2_dev; int /*<<< orphan*/  lock; struct camif_vp* vp; } ;
struct camif_buffer {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int VB2_MMAP ; 
 int VB2_USERPTR ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s3c_camif_fops ; 
 int /*<<< orphan*/  s3c_camif_ioctl_ops ; 
 int /*<<< orphan*/  s3c_camif_qops ; 
 int /*<<< orphan*/  s3c_camif_video_ctrl_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 struct v4l2_ctrl* FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC9 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct video_device*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC12 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct video_device*,struct camif_vp*) ; 

int FUNC14(struct camif_dev *camif, int idx)
{
	struct camif_vp *vp = &camif->vp[idx];
	struct vb2_queue *q = &vp->vb_queue;
	struct video_device *vfd = &vp->vdev;
	struct v4l2_ctrl *ctrl;
	int ret;

	FUNC3(vfd, 0, sizeof(*vfd));
	FUNC4(vfd->name, sizeof(vfd->name), "camif-%s",
		 vp->id == 0 ? "codec" : "preview");

	vfd->fops = &s3c_camif_fops;
	vfd->ioctl_ops = &s3c_camif_ioctl_ops;
	vfd->v4l2_dev = &camif->v4l2_dev;
	vfd->minor = -1;
	vfd->release = video_device_release_empty;
	vfd->lock = &camif->lock;
	vp->reqbufs_count = 0;

	FUNC0(&vp->pending_buf_q);
	FUNC0(&vp->active_buf_q);

	FUNC3(q, 0, sizeof(*q));
	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	q->io_modes = VB2_MMAP | VB2_USERPTR;
	q->ops = &s3c_camif_qops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->buf_struct_size = sizeof(struct camif_buffer);
	q->drv_priv = vp;
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->lock = &vp->camif->lock;
	q->dev = camif->v4l2_dev.dev;

	ret = FUNC9(q);
	if (ret)
		goto err_vd_rel;

	vp->pad.flags = MEDIA_PAD_FL_SINK;
	ret = FUNC2(&vfd->entity, 1, &vp->pad);
	if (ret)
		goto err_vd_rel;

	FUNC13(vfd, vp);

	FUNC6(&vp->ctrl_handler, 1);
	ctrl = FUNC7(&vp->ctrl_handler, &s3c_camif_video_ctrl_ops,
				 V4L2_CID_HFLIP, 0, 1, 1, 0);
	if (ctrl)
		ctrl->priv = vp;
	ctrl = FUNC7(&vp->ctrl_handler, &s3c_camif_video_ctrl_ops,
				 V4L2_CID_VFLIP, 0, 1, 1, 0);
	if (ctrl)
		ctrl->priv = vp;

	ret = vp->ctrl_handler.error;
	if (ret < 0)
		goto err_me_cleanup;

	vfd->ctrl_handler = &vp->ctrl_handler;
	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE;

	ret = FUNC12(vfd, VFL_TYPE_GRABBER, -1);
	if (ret)
		goto err_ctrlh_free;

	FUNC8(&camif->v4l2_dev, "registered %s as /dev/%s\n",
		  vfd->name, FUNC10(vfd));
	return 0;

err_ctrlh_free:
	FUNC5(&vp->ctrl_handler);
err_me_cleanup:
	FUNC1(&vfd->entity);
err_vd_rel:
	FUNC11(vfd);
	return ret;
}