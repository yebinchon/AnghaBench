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
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  virt; } ;
struct aspeed_video {void* eclk; void* vclk; int /*<<< orphan*/  yuv420; TYPE_1__ jpeg; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  VE_JPEG_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct aspeed_video*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aspeed_video_irq ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 void* FUNC8 (struct device*,char*) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aspeed_video*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 

__attribute__((used)) static int FUNC14(struct aspeed_video *video)
{
	int irq;
	int rc;
	struct device *dev = video->dev;

	irq = FUNC11(dev->of_node, 0);
	if (!irq) {
		FUNC7(dev, "Unable to find IRQ\n");
		return -ENODEV;
	}

	rc = FUNC9(dev, irq, NULL, aspeed_video_irq,
				       IRQF_ONESHOT, DEVICE_NAME, video);
	if (rc < 0) {
		FUNC7(dev, "Unable to request IRQ %d\n", irq);
		return rc;
	}

	video->eclk = FUNC8(dev, "eclk");
	if (FUNC1(video->eclk)) {
		FUNC7(dev, "Unable to get ECLK\n");
		return FUNC2(video->eclk);
	}

	rc = FUNC5(video->eclk);
	if (rc)
		return rc;

	video->vclk = FUNC8(dev, "vclk");
	if (FUNC1(video->vclk)) {
		FUNC7(dev, "Unable to get VCLK\n");
		rc = FUNC2(video->vclk);
		goto err_unprepare_eclk;
	}

	rc = FUNC5(video->vclk);
	if (rc)
		goto err_unprepare_eclk;

	FUNC12(dev);

	rc = FUNC10(dev, FUNC0(32));
	if (rc) {
		FUNC7(dev, "Failed to set DMA mask\n");
		goto err_release_reserved_mem;
	}

	if (!FUNC3(video, &video->jpeg,
				    VE_JPEG_HEADER_SIZE)) {
		FUNC7(dev, "Failed to allocate DMA for JPEG header\n");
		rc = -ENOMEM;
		goto err_release_reserved_mem;
	}

	FUNC4(video->jpeg.virt, video->yuv420);

	return 0;

err_release_reserved_mem:
	FUNC13(dev);
	FUNC6(video->vclk);
err_unprepare_eclk:
	FUNC6(video->eclk);

	return rc;
}