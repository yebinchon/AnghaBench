#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct video_device {int device_caps; int /*<<< orphan*/  num; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  flags; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct of_device_id {scalar_t__ data; } ;
struct g2d_variant {int dummy; } ;
struct g2d_dev {void* clk; void* gate; int /*<<< orphan*/  v4l2_dev; struct video_device* vfd; struct g2d_variant* variant; void* m2m_dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  irq; void* regs; int /*<<< orphan*/  num_inst; int /*<<< orphan*/  ctrl_lock; } ;
struct TYPE_12__ {int stride; int width; TYPE_1__* fmt; } ;
struct TYPE_10__ {int depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M ; 
 int /*<<< orphan*/  V4L2_FL_QUIRK_INVERTED_CROP ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 TYPE_8__ def_frame ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 void* FUNC9 (TYPE_2__*,struct resource*) ; 
 struct g2d_dev* FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct g2d_dev*) ; 
 int /*<<< orphan*/  exynos_g2d_match ; 
 int /*<<< orphan*/  g2d_isr ; 
 int /*<<< orphan*/  g2d_m2m_ops ; 
 struct video_device g2d_videodev ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct g2d_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (struct video_device*) ; 
 int FUNC26 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct video_device*,struct g2d_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct video_device*) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct g2d_dev *dev;
	struct video_device *vfd;
	struct resource *res;
	const struct of_device_id *of_id;
	int ret = 0;

	dev = FUNC10(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	FUNC17(&dev->ctrl_lock);
	FUNC12(&dev->mutex);
	FUNC3(&dev->num_inst, 0);

	res = FUNC14(pdev, IORESOURCE_MEM, 0);

	dev->regs = FUNC9(&pdev->dev, res);
	if (FUNC1(dev->regs))
		return FUNC2(dev->regs);

	dev->clk = FUNC4(&pdev->dev, "sclk_fimg2d");
	if (FUNC1(dev->clk)) {
		FUNC8(&pdev->dev, "failed to get g2d clock\n");
		return -ENXIO;
	}

	ret = FUNC5(dev->clk);
	if (ret) {
		FUNC8(&pdev->dev, "failed to prepare g2d clock\n");
		goto put_clk;
	}

	dev->gate = FUNC4(&pdev->dev, "fimg2d");
	if (FUNC1(dev->gate)) {
		FUNC8(&pdev->dev, "failed to get g2d clock gate\n");
		ret = -ENXIO;
		goto unprep_clk;
	}

	ret = FUNC5(dev->gate);
	if (ret) {
		FUNC8(&pdev->dev, "failed to prepare g2d clock gate\n");
		goto put_clk_gate;
	}

	res = FUNC14(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC8(&pdev->dev, "failed to find IRQ\n");
		ret = -ENXIO;
		goto unprep_clk_gate;
	}

	dev->irq = res->start;

	ret = FUNC11(&pdev->dev, dev->irq, g2d_isr,
						0, pdev->name, dev);
	if (ret) {
		FUNC8(&pdev->dev, "failed to install IRQ\n");
		goto unprep_clk_gate;
	}

	FUNC23(&pdev->dev, FUNC0(32));

	ret = FUNC18(&pdev->dev, &dev->v4l2_dev);
	if (ret)
		goto unprep_clk_gate;
	vfd = FUNC24();
	if (!vfd) {
		FUNC20(&dev->v4l2_dev, "Failed to allocate video device\n");
		ret = -ENOMEM;
		goto unreg_v4l2_dev;
	}
	*vfd = g2d_videodev;
	FUNC16(V4L2_FL_QUIRK_INVERTED_CROP, &vfd->flags);
	vfd->lock = &dev->mutex;
	vfd->v4l2_dev = &dev->v4l2_dev;
	vfd->device_caps = V4L2_CAP_VIDEO_M2M | V4L2_CAP_STREAMING;
	ret = FUNC26(vfd, VFL_TYPE_GRABBER, 0);
	if (ret) {
		FUNC20(&dev->v4l2_dev, "Failed to register video device\n");
		goto rel_vdev;
	}
	FUNC27(vfd, dev);
	dev->vfd = vfd;
	FUNC21(&dev->v4l2_dev, "device registered as /dev/video%d\n",
								vfd->num);
	FUNC15(pdev, dev);
	dev->m2m_dev = FUNC22(&g2d_m2m_ops);
	if (FUNC1(dev->m2m_dev)) {
		FUNC20(&dev->v4l2_dev, "Failed to init mem2mem device\n");
		ret = FUNC2(dev->m2m_dev);
		goto unreg_video_dev;
	}

	def_frame.stride = (def_frame.width * def_frame.fmt->depth) >> 3;

	of_id = FUNC13(exynos_g2d_match, pdev->dev.of_node);
	if (!of_id) {
		ret = -ENODEV;
		goto unreg_video_dev;
	}
	dev->variant = (struct g2d_variant *)of_id->data;

	return 0;

unreg_video_dev:
	FUNC28(dev->vfd);
rel_vdev:
	FUNC25(vfd);
unreg_v4l2_dev:
	FUNC19(&dev->v4l2_dev);
unprep_clk_gate:
	FUNC7(dev->gate);
put_clk_gate:
	FUNC6(dev->gate);
unprep_clk:
	FUNC7(dev->clk);
put_clk:
	FUNC6(dev->clk);

	return ret;
}