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
struct video_device {char* name; int /*<<< orphan*/  num; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; } ;
struct resource {int dummy; } ;
struct pxp_dev {int /*<<< orphan*/  clk; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  dev_mutex; struct video_device vfd; int /*<<< orphan*/  num_inst; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  mmio; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pxp_dev* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pxp_dev*) ; 
 int /*<<< orphan*/  m2m_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct pxp_dev*) ; 
 int /*<<< orphan*/  pxp_irq_handler ; 
 int FUNC15 (struct pxp_dev*) ; 
 struct video_device pxp_videodev ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct video_device*,struct pxp_dev*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct pxp_dev *dev;
	struct resource *res;
	struct video_device *vfd;
	int irq;
	int ret;

	dev = FUNC9(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->clk = FUNC7(&pdev->dev, "axi");
	if (FUNC0(dev->clk)) {
		ret = FUNC1(dev->clk);
		FUNC5(&pdev->dev, "Failed to get clk: %d\n", ret);
		return ret;
	}

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	dev->mmio = FUNC8(&pdev->dev, res);
	if (FUNC0(dev->mmio)) {
		ret = FUNC1(dev->mmio);
		FUNC5(&pdev->dev, "Failed to map register space: %d\n", ret);
		return ret;
	}

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC10(&pdev->dev, irq, NULL, pxp_irq_handler,
			IRQF_ONESHOT, FUNC6(&pdev->dev), dev);
	if (ret < 0) {
		FUNC5(&pdev->dev, "Failed to request irq: %d\n", ret);
		return ret;
	}

	ret = FUNC4(dev->clk);
	if (ret < 0)
		return ret;

	ret = FUNC15(dev);
	if (ret < 0) {
		FUNC5(&pdev->dev, "PXP reset timeout: %d\n", ret);
		goto err_clk;
	}

	FUNC17(&dev->irqlock);

	ret = FUNC18(&pdev->dev, &dev->v4l2_dev);
	if (ret)
		goto err_clk;

	FUNC2(&dev->num_inst, 0);
	FUNC11(&dev->dev_mutex);

	dev->vfd = pxp_videodev;
	vfd = &dev->vfd;
	vfd->lock = &dev->dev_mutex;
	vfd->v4l2_dev = &dev->v4l2_dev;

	FUNC25(vfd, dev);
	FUNC16(vfd->name, sizeof(vfd->name), "%s", pxp_videodev.name);
	FUNC21(&dev->v4l2_dev,
			"Device registered as /dev/video%d\n", vfd->num);

	FUNC14(pdev, dev);

	dev->m2m_dev = FUNC22(&m2m_ops);
	if (FUNC0(dev->m2m_dev)) {
		FUNC20(&dev->v4l2_dev, "Failed to init mem2mem device\n");
		ret = FUNC1(dev->m2m_dev);
		goto err_v4l2;
	}

	ret = FUNC24(vfd, VFL_TYPE_GRABBER, 0);
	if (ret) {
		FUNC20(&dev->v4l2_dev, "Failed to register video device\n");
		goto err_m2m;
	}

	return 0;

err_m2m:
	FUNC23(dev->m2m_dev);
err_v4l2:
	FUNC19(&dev->v4l2_dev);
err_clk:
	FUNC3(dev->clk);

	return ret;
}