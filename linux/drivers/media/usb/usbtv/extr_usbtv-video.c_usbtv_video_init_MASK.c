#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct usbtv_buf {int dummy; } ;
struct TYPE_11__ {int io_modes; int buf_struct_size; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct usbtv* drv_priv; int /*<<< orphan*/  type; } ;
struct TYPE_13__ {int error; } ;
struct TYPE_12__ {int /*<<< orphan*/  release; TYPE_7__* ctrl_handler; } ;
struct TYPE_10__ {int device_caps; int /*<<< orphan*/ * lock; TYPE_3__* queue; int /*<<< orphan*/  tvnorms; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  release; TYPE_5__* v4l2_dev; int /*<<< orphan*/  name; } ;
struct usbtv {TYPE_3__ vb2q; TYPE_7__ ctrl; TYPE_5__ v4l2_dev; int /*<<< orphan*/  dev; TYPE_1__ vdev; int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  vb2q_lock; int /*<<< orphan*/  bufs; int /*<<< orphan*/  buflock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USBTV_TV_STD ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_SHARPNESS ; 
 int /*<<< orphan*/  V4L2_STD_525_60 ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int VB2_USERPTR ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usbtv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbtv_ctrl_ops ; 
 int /*<<< orphan*/  usbtv_fops ; 
 int /*<<< orphan*/  usbtv_ioctl_ops ; 
 int /*<<< orphan*/  usbtv_release ; 
 int /*<<< orphan*/  usbtv_vb2_ops ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  vb2_vmalloc_memops ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,struct usbtv*) ; 

int FUNC15(struct usbtv *usbtv)
{
	int ret;

	(void)FUNC5(usbtv, V4L2_STD_525_60);

	FUNC3(&usbtv->buflock);
	FUNC2(&usbtv->v4l2_lock);
	FUNC2(&usbtv->vb2q_lock);
	FUNC0(&usbtv->bufs);

	/* videobuf2 structure */
	usbtv->vb2q.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	usbtv->vb2q.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
	usbtv->vb2q.drv_priv = usbtv;
	usbtv->vb2q.buf_struct_size = sizeof(struct usbtv_buf);
	usbtv->vb2q.ops = &usbtv_vb2_ops;
	usbtv->vb2q.mem_ops = &vb2_vmalloc_memops;
	usbtv->vb2q.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	usbtv->vb2q.lock = &usbtv->vb2q_lock;
	ret = FUNC11(&usbtv->vb2q);
	if (ret < 0) {
		FUNC1(usbtv->dev, "Could not initialize videobuf2 queue\n");
		return ret;
	}

	/* controls */
	FUNC7(&usbtv->ctrl, 4);
	FUNC8(&usbtv->ctrl, &usbtv_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 0x3ff, 1, 0x1d0);
	FUNC8(&usbtv->ctrl, &usbtv_ctrl_ops,
			V4L2_CID_BRIGHTNESS, 0, 0x3ff, 1, 0x1c0);
	FUNC8(&usbtv->ctrl, &usbtv_ctrl_ops,
			V4L2_CID_SATURATION, 0, 0x3ff, 1, 0x200);
	FUNC8(&usbtv->ctrl, &usbtv_ctrl_ops,
			V4L2_CID_HUE, -0xdff, 0xdff, 1, 0x000);
	FUNC8(&usbtv->ctrl, &usbtv_ctrl_ops,
			V4L2_CID_SHARPNESS, 0x0, 0xff, 1, 0x60);
	ret = usbtv->ctrl.error;
	if (ret < 0) {
		FUNC1(usbtv->dev, "Could not initialize controls\n");
		goto ctrl_fail;
	}

	/* v4l2 structure */
	usbtv->v4l2_dev.ctrl_handler = &usbtv->ctrl;
	usbtv->v4l2_dev.release = usbtv_release;
	ret = FUNC9(usbtv->dev, &usbtv->v4l2_dev);
	if (ret < 0) {
		FUNC1(usbtv->dev, "Could not register v4l2 device\n");
		goto v4l2_fail;
	}

	/* Video structure */
	FUNC4(usbtv->vdev.name, "usbtv", sizeof(usbtv->vdev.name));
	usbtv->vdev.v4l2_dev = &usbtv->v4l2_dev;
	usbtv->vdev.release = video_device_release_empty;
	usbtv->vdev.fops = &usbtv_fops;
	usbtv->vdev.ioctl_ops = &usbtv_ioctl_ops;
	usbtv->vdev.tvnorms = USBTV_TV_STD;
	usbtv->vdev.queue = &usbtv->vb2q;
	usbtv->vdev.lock = &usbtv->v4l2_lock;
	usbtv->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
				  V4L2_CAP_STREAMING;
	FUNC14(&usbtv->vdev, usbtv);
	ret = FUNC13(&usbtv->vdev, VFL_TYPE_GRABBER, -1);
	if (ret < 0) {
		FUNC1(usbtv->dev, "Could not register video device\n");
		goto vdev_fail;
	}

	return 0;

vdev_fail:
	FUNC10(&usbtv->v4l2_dev);
v4l2_fail:
ctrl_fail:
	FUNC6(&usbtv->ctrl);
	FUNC12(&usbtv->vb2q);

	return ret;
}