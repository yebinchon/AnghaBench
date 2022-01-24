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
struct video_device {int /*<<< orphan*/ * lock; int /*<<< orphan*/ * v4l2_dev; } ;
struct sh_veu_dev {int is_2h; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  vfmt_in; int /*<<< orphan*/  vfmt_out; int /*<<< orphan*/ * dev; int /*<<< orphan*/  fop_lock; int /*<<< orphan*/  lock; struct video_device vdev; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_IN_VFMT ; 
 int /*<<< orphan*/  DEFAULT_OUT_VFMT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct sh_veu_dev* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sh_veu_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  sh_veu_bh ; 
 int /*<<< orphan*/  sh_veu_isr ; 
 int /*<<< orphan*/  sh_veu_m2m_ops ; 
 struct video_device sh_veu_videodev ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct video_device*,struct sh_veu_dev*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct sh_veu_dev *veu;
	struct resource *reg_res;
	struct video_device *vdev;
	int irq, ret;

	reg_res = FUNC8(pdev, IORESOURCE_MEM, 0);
	irq = FUNC7(pdev, 0);

	if (!reg_res || irq <= 0) {
		FUNC2(&pdev->dev, "Insufficient VEU platform information.\n");
		return -ENODEV;
	}

	veu = FUNC4(&pdev->dev, sizeof(*veu), GFP_KERNEL);
	if (!veu)
		return -ENOMEM;

	veu->is_2h = FUNC13(reg_res) == 0x22c;

	veu->base = FUNC3(&pdev->dev, reg_res);
	if (FUNC0(veu->base))
		return FUNC1(veu->base);

	ret = FUNC5(&pdev->dev, irq, sh_veu_isr, sh_veu_bh,
					0, "veu", veu);
	if (ret < 0)
		return ret;

	ret = FUNC15(&pdev->dev, &veu->v4l2_dev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Error registering v4l2 device\n");
		return ret;
	}

	vdev = &veu->vdev;

	*vdev = sh_veu_videodev;
	vdev->v4l2_dev = &veu->v4l2_dev;
	FUNC14(&veu->lock);
	FUNC6(&veu->fop_lock);
	vdev->lock = &veu->fop_lock;

	FUNC21(vdev, veu);

	veu->dev	= &pdev->dev;
	veu->vfmt_out	= DEFAULT_OUT_VFMT;
	veu->vfmt_in	= DEFAULT_IN_VFMT;

	veu->m2m_dev = FUNC18(&sh_veu_m2m_ops);
	if (FUNC0(veu->m2m_dev)) {
		ret = FUNC1(veu->m2m_dev);
		FUNC17(&veu->v4l2_dev, "Failed to init mem2mem device: %d\n", ret);
		goto em2minit;
	}

	FUNC10(&pdev->dev);
	FUNC11(&pdev->dev);

	ret = FUNC20(vdev, VFL_TYPE_GRABBER, -1);
	FUNC12(&pdev->dev);
	if (ret < 0)
		goto evidreg;

	return ret;

evidreg:
	FUNC9(&pdev->dev);
	FUNC19(veu->m2m_dev);
em2minit:
	FUNC16(&veu->v4l2_dev);
	return ret;
}