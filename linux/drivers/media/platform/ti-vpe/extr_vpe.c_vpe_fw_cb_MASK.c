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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct video_device {int /*<<< orphan*/  num; TYPE_1__* v4l2_dev; int /*<<< orphan*/ * lock; } ;
struct vpe_dev {TYPE_1__ v4l2_dev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  dev_mutex; struct video_device vfd; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct vpe_dev* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct video_device*,struct vpe_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct vpe_dev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct vpe_dev*,int /*<<< orphan*/ ) ; 
 struct video_device vpe_videodev ; 

__attribute__((used)) static void FUNC10(struct platform_device *pdev)
{
	struct vpe_dev *dev = FUNC1(pdev);
	struct video_device *vfd;
	int ret;

	vfd = &dev->vfd;
	*vfd = vpe_videodev;
	vfd->lock = &dev->dev_mutex;
	vfd->v4l2_dev = &dev->v4l2_dev;

	ret = FUNC5(vfd, VFL_TYPE_GRABBER, 0);
	if (ret) {
		FUNC7(dev, "Failed to register video device\n");

		FUNC9(dev, 0);
		FUNC8(pdev);
		FUNC2(&pdev->dev);
		FUNC4(dev->m2m_dev);
		FUNC3(&dev->v4l2_dev);

		return;
	}

	FUNC6(vfd, dev);
	FUNC0(dev->v4l2_dev.dev, "Device registered as /dev/video%d\n",
		vfd->num);
}