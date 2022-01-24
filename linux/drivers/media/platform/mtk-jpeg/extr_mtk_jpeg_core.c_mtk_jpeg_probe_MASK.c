#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct mtk_jpeg_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_dev; TYPE_1__* dec_vdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  dec_reg_base; int /*<<< orphan*/ * dev; int /*<<< orphan*/  hw_lock; } ;
struct TYPE_5__ {int minor; int device_caps; int /*<<< orphan*/  num; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  (* release ) (TYPE_1__*) ;int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* MTK_JPEG_NAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M_MPLANE ; 
 int /*<<< orphan*/  VFL_DIR_M2M ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VIDEO_MAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct mtk_jpeg_dev* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtk_jpeg_dev*) ; 
 int FUNC6 (struct mtk_jpeg_dev*) ; 
 int /*<<< orphan*/  mtk_jpeg_dec_irq ; 
 int /*<<< orphan*/  mtk_jpeg_fops ; 
 int /*<<< orphan*/  mtk_jpeg_ioctl_ops ; 
 int /*<<< orphan*/  mtk_jpeg_m2m_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct mtk_jpeg_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,struct mtk_jpeg_dev*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct mtk_jpeg_dev *jpeg;
	struct resource *res;
	int dec_irq;
	int ret;

	jpeg = FUNC4(&pdev->dev, sizeof(*jpeg), GFP_KERNEL);
	if (!jpeg)
		return -ENOMEM;

	FUNC7(&jpeg->lock);
	FUNC13(&jpeg->hw_lock);
	jpeg->dev = &pdev->dev;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	jpeg->dec_reg_base = FUNC3(&pdev->dev, res);
	if (FUNC0(jpeg->dec_reg_base)) {
		ret = FUNC1(jpeg->dec_reg_base);
		return ret;
	}

	res = FUNC9(pdev, IORESOURCE_IRQ, 0);
	dec_irq = FUNC8(pdev, 0);
	if (!res || dec_irq < 0) {
		FUNC2(&pdev->dev, "Failed to get dec_irq %d.\n", dec_irq);
		ret = -EINVAL;
		return ret;
	}

	ret = FUNC5(&pdev->dev, dec_irq, mtk_jpeg_dec_irq, 0,
			       pdev->name, jpeg);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to request dec_irq %d (%d)\n",
			dec_irq, ret);
		ret = -EINVAL;
		goto err_req_irq;
	}

	ret = FUNC6(jpeg);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to init clk, err %d\n", ret);
		goto err_clk_init;
	}

	ret = FUNC14(&pdev->dev, &jpeg->v4l2_dev);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to register v4l2 device\n");
		ret = -EINVAL;
		goto err_dev_register;
	}

	jpeg->m2m_dev = FUNC18(&mtk_jpeg_m2m_ops);
	if (FUNC0(jpeg->m2m_dev)) {
		FUNC16(&jpeg->v4l2_dev, "Failed to init mem2mem device\n");
		ret = FUNC1(jpeg->m2m_dev);
		goto err_m2m_init;
	}

	jpeg->dec_vdev = FUNC20();
	if (!jpeg->dec_vdev) {
		ret = -ENOMEM;
		goto err_dec_vdev_alloc;
	}
	FUNC12(jpeg->dec_vdev->name, sizeof(jpeg->dec_vdev->name),
		 "%s-dec", MTK_JPEG_NAME);
	jpeg->dec_vdev->fops = &mtk_jpeg_fops;
	jpeg->dec_vdev->ioctl_ops = &mtk_jpeg_ioctl_ops;
	jpeg->dec_vdev->minor = -1;
	jpeg->dec_vdev->release = video_device_release;
	jpeg->dec_vdev->lock = &jpeg->lock;
	jpeg->dec_vdev->v4l2_dev = &jpeg->v4l2_dev;
	jpeg->dec_vdev->vfl_dir = VFL_DIR_M2M;
	jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
				      V4L2_CAP_VIDEO_M2M_MPLANE;

	ret = FUNC22(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
	if (ret) {
		FUNC16(&jpeg->v4l2_dev, "Failed to register video device\n");
		goto err_dec_vdev_register;
	}

	FUNC23(jpeg->dec_vdev, jpeg);
	FUNC17(&jpeg->v4l2_dev,
		  "decoder device registered as /dev/video%d (%d,%d)\n",
		  jpeg->dec_vdev->num, VIDEO_MAJOR, jpeg->dec_vdev->minor);

	FUNC10(pdev, jpeg);

	FUNC11(&pdev->dev);

	return 0;

err_dec_vdev_register:
	FUNC21(jpeg->dec_vdev);

err_dec_vdev_alloc:
	FUNC19(jpeg->m2m_dev);

err_m2m_init:
	FUNC15(&jpeg->v4l2_dev);

err_dev_register:

err_clk_init:

err_req_irq:

	return ret;
}