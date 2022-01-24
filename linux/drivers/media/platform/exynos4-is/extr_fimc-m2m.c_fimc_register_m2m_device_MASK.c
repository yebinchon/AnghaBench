#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct video_device {int minor; int device_caps; int /*<<< orphan*/  entity; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * lock; int /*<<< orphan*/  release; struct v4l2_device* v4l2_dev; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct v4l2_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_dev; struct video_device vfd; } ;
struct fimc_dev {int id; TYPE_1__ m2m; int /*<<< orphan*/  lock; struct v4l2_device* v4l2_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M_MPLANE ; 
 int /*<<< orphan*/  V4L2_FL_QUIRK_INVERTED_CROP ; 
 int /*<<< orphan*/  VFL_DIR_M2M ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  fimc_m2m_fops ; 
 int /*<<< orphan*/  fimc_m2m_ioctl_ops ; 
 int /*<<< orphan*/  m2m_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct video_device*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC12 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct video_device*,struct fimc_dev*) ; 

int FUNC14(struct fimc_dev *fimc,
			     struct v4l2_device *v4l2_dev)
{
	struct video_device *vfd = &fimc->m2m.vfd;
	int ret;

	fimc->v4l2_dev = v4l2_dev;

	FUNC4(vfd, 0, sizeof(*vfd));
	vfd->fops = &fimc_m2m_fops;
	vfd->ioctl_ops = &fimc_m2m_ioctl_ops;
	vfd->v4l2_dev = v4l2_dev;
	vfd->minor = -1;
	vfd->release = video_device_release_empty;
	vfd->lock = &fimc->lock;
	vfd->vfl_dir = VFL_DIR_M2M;
	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
	FUNC5(V4L2_FL_QUIRK_INVERTED_CROP, &vfd->flags);

	FUNC6(vfd->name, sizeof(vfd->name), "fimc.%d.m2m", fimc->id);
	FUNC13(vfd, fimc);

	fimc->m2m.m2m_dev = FUNC9(&m2m_ops);
	if (FUNC0(fimc->m2m.m2m_dev)) {
		FUNC7(v4l2_dev, "failed to initialize v4l2-m2m device\n");
		return FUNC1(fimc->m2m.m2m_dev);
	}

	ret = FUNC3(&vfd->entity, 0, NULL);
	if (ret)
		goto err_me;

	ret = FUNC12(vfd, VFL_TYPE_GRABBER, -1);
	if (ret)
		goto err_vd;

	FUNC8(v4l2_dev, "Registered %s as /dev/%s\n",
		  vfd->name, FUNC11(vfd));
	return 0;

err_vd:
	FUNC2(&vfd->entity);
err_me:
	FUNC10(fimc->m2m.m2m_dev);
	return ret;
}