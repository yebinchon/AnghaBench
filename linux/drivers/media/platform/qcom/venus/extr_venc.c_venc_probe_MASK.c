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
struct video_device {int device_caps; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  (* release ) (struct video_device*) ;int /*<<< orphan*/  name; } ;
struct venus_core {struct device* dev_enc; struct video_device* vdev_enc; int /*<<< orphan*/  v4l2_dev; void* core1_bus_clk; void* core1_clk; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (struct venus_core*) ; 
 scalar_t__ FUNC2 (struct venus_core*) ; 
 int FUNC3 (void*) ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M_MPLANE ; 
 int /*<<< orphan*/  VFL_DIR_M2M ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 struct venus_core* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct venus_core*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  venc_fops ; 
 int /*<<< orphan*/  venc_ioctl_ops ; 
 struct video_device* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct video_device*) ; 
 int FUNC11 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct video_device*,struct venus_core*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct video_device *vdev;
	struct venus_core *core;
	int ret;

	if (!dev->parent)
		return -EPROBE_DEFER;

	core = FUNC4(dev->parent);
	if (!core)
		return -EPROBE_DEFER;

	if (FUNC1(core) || FUNC2(core)) {
		core->core1_clk = FUNC5(dev, "core");
		if (FUNC0(core->core1_clk))
			return FUNC3(core->core1_clk);
	}

	if (FUNC2(core)) {
		core->core1_bus_clk = FUNC5(dev, "bus");
		if (FUNC0(core->core1_bus_clk))
			return FUNC3(core->core1_bus_clk);
	}

	FUNC6(pdev, core);

	vdev = FUNC9();
	if (!vdev)
		return -ENOMEM;

	FUNC8(vdev->name, "qcom-venus-encoder", sizeof(vdev->name));
	vdev->release = video_device_release;
	vdev->fops = &venc_fops;
	vdev->ioctl_ops = &venc_ioctl_ops;
	vdev->vfl_dir = VFL_DIR_M2M;
	vdev->v4l2_dev = &core->v4l2_dev;
	vdev->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;

	ret = FUNC11(vdev, VFL_TYPE_GRABBER, -1);
	if (ret)
		goto err_vdev_release;

	core->vdev_enc = vdev;
	core->dev_enc = dev;

	FUNC12(vdev, core);
	FUNC7(dev);

	return 0;

err_vdev_release:
	FUNC10(vdev);
	return ret;
}