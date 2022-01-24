#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_device {int device_caps; int /*<<< orphan*/  name; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * lock; int /*<<< orphan*/  (* release ) (struct video_device*) ;int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct hva_dev {int /*<<< orphan*/  m2m_dev; struct video_device* vdev; int /*<<< orphan*/  ip_version; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 char* HVA_NAME ; 
 int /*<<< orphan*/  HVA_PREFIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M ; 
 int /*<<< orphan*/  VFL_DIR_M2M ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hva_fops ; 
 int /*<<< orphan*/  hva_ioctl_ops ; 
 int /*<<< orphan*/  hva_m2m_ops ; 
 struct device* FUNC3 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct video_device*) ; 
 int FUNC9 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct video_device*,struct hva_dev*) ; 

__attribute__((used)) static int FUNC11(struct hva_dev *hva)
{
	int ret;
	struct video_device *vdev;
	struct device *dev;

	if (!hva)
		return -ENODEV;
	dev = FUNC3(hva);

	hva->m2m_dev = FUNC5(&hva_m2m_ops);
	if (FUNC0(hva->m2m_dev)) {
		FUNC2(dev, "%s failed to initialize v4l2-m2m device\n",
			HVA_PREFIX);
		ret = FUNC1(hva->m2m_dev);
		goto err;
	}

	vdev = FUNC7();
	if (!vdev) {
		FUNC2(dev, "%s failed to allocate video device\n",
			HVA_PREFIX);
		ret = -ENOMEM;
		goto err_m2m_release;
	}

	vdev->fops = &hva_fops;
	vdev->ioctl_ops = &hva_ioctl_ops;
	vdev->release = video_device_release;
	vdev->lock = &hva->lock;
	vdev->vfl_dir = VFL_DIR_M2M;
	vdev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M;
	vdev->v4l2_dev = &hva->v4l2_dev;
	FUNC4(vdev->name, sizeof(vdev->name), "%s%lx", HVA_NAME,
		 hva->ip_version);

	ret = FUNC9(vdev, VFL_TYPE_GRABBER, -1);
	if (ret) {
		FUNC2(dev, "%s failed to register video device\n",
			HVA_PREFIX);
		goto err_vdev_release;
	}

	hva->vdev = vdev;
	FUNC10(vdev, hva);
	return 0;

err_vdev_release:
	FUNC8(vdev);
err_m2m_release:
	FUNC6(hva->m2m_dev);
err:
	return ret;
}