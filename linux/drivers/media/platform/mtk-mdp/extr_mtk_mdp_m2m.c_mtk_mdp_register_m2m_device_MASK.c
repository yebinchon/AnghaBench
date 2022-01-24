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
struct mtk_mdp_dev {TYPE_2__* vdev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/ * variant; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int device_caps; int /*<<< orphan*/  num; int /*<<< orphan*/  name; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * lock; int /*<<< orphan*/  (* release ) (TYPE_2__*) ;int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* MTK_MDP_MODULE_NAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M_MPLANE ; 
 int /*<<< orphan*/  VFL_DIR_M2M ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  mtk_mdp_default_variant ; 
 int /*<<< orphan*/  mtk_mdp_m2m_fops ; 
 int /*<<< orphan*/  mtk_mdp_m2m_ioctl_ops ; 
 int /*<<< orphan*/  mtk_mdp_m2m_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct mtk_mdp_dev*) ; 

int FUNC11(struct mtk_mdp_dev *mdp)
{
	struct device *dev = &mdp->pdev->dev;
	int ret;

	mdp->variant = &mtk_mdp_default_variant;
	mdp->vdev = FUNC7();
	if (!mdp->vdev) {
		FUNC2(dev, "failed to allocate video device\n");
		ret = -ENOMEM;
		goto err_video_alloc;
	}
	mdp->vdev->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;
	mdp->vdev->fops = &mtk_mdp_m2m_fops;
	mdp->vdev->ioctl_ops = &mtk_mdp_m2m_ioctl_ops;
	mdp->vdev->release = video_device_release;
	mdp->vdev->lock = &mdp->lock;
	mdp->vdev->vfl_dir = VFL_DIR_M2M;
	mdp->vdev->v4l2_dev = &mdp->v4l2_dev;
	FUNC3(mdp->vdev->name, sizeof(mdp->vdev->name), "%s:m2m",
		 MTK_MDP_MODULE_NAME);
	FUNC10(mdp->vdev, mdp);

	mdp->m2m_dev = FUNC5(&mtk_mdp_m2m_ops);
	if (FUNC0(mdp->m2m_dev)) {
		FUNC2(dev, "failed to initialize v4l2-m2m device\n");
		ret = FUNC1(mdp->m2m_dev);
		goto err_m2m_init;
	}

	ret = FUNC9(mdp->vdev, VFL_TYPE_GRABBER, 2);
	if (ret) {
		FUNC2(dev, "failed to register video device\n");
		goto err_vdev_register;
	}

	FUNC4(&mdp->v4l2_dev, "driver registered as /dev/video%d",
		  mdp->vdev->num);
	return 0;

err_vdev_register:
	FUNC6(mdp->m2m_dev);
err_m2m_init:
	FUNC8(mdp->vdev);
err_video_alloc:

	return ret;
}