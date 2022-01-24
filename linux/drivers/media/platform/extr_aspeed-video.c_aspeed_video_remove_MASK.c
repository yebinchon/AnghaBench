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
struct v4l2_device {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  virt; } ;
struct aspeed_video {TYPE_1__ jpeg; int /*<<< orphan*/  dev; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  queue; int /*<<< orphan*/  vdev; int /*<<< orphan*/  eclk; int /*<<< orphan*/  vclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  VE_JPEG_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct v4l2_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct aspeed_video* FUNC5 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct v4l2_device *v4l2_dev = FUNC2(dev);
	struct aspeed_video *video = FUNC5(v4l2_dev);

	FUNC0(video);

	FUNC1(video->vclk);
	FUNC1(video->eclk);

	FUNC9(&video->vdev);

	FUNC8(&video->queue);

	FUNC6(&video->ctrl_handler);

	FUNC7(v4l2_dev);

	FUNC3(video->dev, VE_JPEG_HEADER_SIZE, video->jpeg.virt,
			  video->jpeg.dma);

	FUNC4(dev);

	return 0;
}