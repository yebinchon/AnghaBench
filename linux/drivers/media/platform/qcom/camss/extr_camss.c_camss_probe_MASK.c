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
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {TYPE_8__* mdev; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  model; struct device* dev; } ;
struct camss {scalar_t__ version; int csiphy_num; int csid_num; int vfe_num; TYPE_5__ notifier; TYPE_1__ v4l2_dev; void** genpd; struct device* dev; TYPE_8__ media_dev; void* vfe; void* csid; void* csiphy; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 scalar_t__ CAMSS_8x16 ; 
 scalar_t__ CAMSS_8x96 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 size_t PM_DOMAIN_VFE0 ; 
 size_t PM_DOMAIN_VFE1 ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct camss*) ; 
 int /*<<< orphan*/  camss_media_ops ; 
 int FUNC4 (struct camss*) ; 
 int FUNC5 (struct camss*) ; 
 int /*<<< orphan*/  camss_subdev_notifier_ops ; 
 int /*<<< orphan*/  FUNC6 (struct camss*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 void* FUNC8 (struct device*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 void* FUNC10 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int) ; 
 struct camss* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*) ; 
 int FUNC14 (TYPE_8__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct camss*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*) ; 
 int FUNC21 (TYPE_1__*,TYPE_5__*) ; 
 int FUNC22 (struct device*,TYPE_1__*) ; 
 int FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct camss *camss;
	int num_subdevs, ret;

	camss = FUNC12(sizeof(*camss), GFP_KERNEL);
	if (!camss)
		return -ENOMEM;

	FUNC2(&camss->ref_count, 0);
	camss->dev = dev;
	FUNC16(pdev, camss);

	if (FUNC15(dev->of_node, "qcom,msm8916-camss")) {
		camss->version = CAMSS_8x16;
		camss->csiphy_num = 2;
		camss->csid_num = 2;
		camss->vfe_num = 1;
	} else if (FUNC15(dev->of_node,
					   "qcom,msm8996-camss")) {
		camss->version = CAMSS_8x96;
		camss->csiphy_num = 3;
		camss->csid_num = 4;
		camss->vfe_num = 2;
	} else {
		return -EINVAL;
	}

	camss->csiphy = FUNC10(dev, camss->csiphy_num,
				     sizeof(*camss->csiphy), GFP_KERNEL);
	if (!camss->csiphy)
		return -ENOMEM;

	camss->csid = FUNC10(dev, camss->csid_num, sizeof(*camss->csid),
				   GFP_KERNEL);
	if (!camss->csid)
		return -ENOMEM;

	camss->vfe = FUNC10(dev, camss->vfe_num, sizeof(*camss->vfe),
				  GFP_KERNEL);
	if (!camss->vfe)
		return -ENOMEM;

	FUNC20(&camss->notifier);

	num_subdevs = FUNC4(camss);
	if (num_subdevs < 0)
		return num_subdevs;

	ret = FUNC3(camss);
	if (ret < 0)
		goto err_cleanup;

	ret = FUNC11(dev, 0xffffffff);
	if (ret)
		goto err_cleanup;

	camss->media_dev.dev = camss->dev;
	FUNC18(camss->media_dev.model, "Qualcomm Camera Subsystem",
		sizeof(camss->media_dev.model));
	camss->media_dev.ops = &camss_media_ops;
	FUNC13(&camss->media_dev);

	camss->v4l2_dev.mdev = &camss->media_dev;
	ret = FUNC22(camss->dev, &camss->v4l2_dev);
	if (ret < 0) {
		FUNC7(dev, "Failed to register V4L2 device: %d\n", ret);
		goto err_cleanup;
	}

	ret = FUNC5(camss);
	if (ret < 0)
		goto err_register_entities;

	if (num_subdevs) {
		camss->notifier.ops = &camss_subdev_notifier_ops;

		ret = FUNC21(&camss->v4l2_dev,
						   &camss->notifier);
		if (ret) {
			FUNC7(dev,
				"Failed to register async subdev nodes: %d\n",
				ret);
			goto err_register_subdevs;
		}
	} else {
		ret = FUNC23(&camss->v4l2_dev);
		if (ret < 0) {
			FUNC7(dev, "Failed to register subdev nodes: %d\n",
				ret);
			goto err_register_subdevs;
		}

		ret = FUNC14(&camss->media_dev);
		if (ret < 0) {
			FUNC7(dev, "Failed to register media device: %d\n",
				ret);
			goto err_register_subdevs;
		}
	}

	if (camss->version == CAMSS_8x96) {
		camss->genpd[PM_DOMAIN_VFE0] = FUNC8(
						camss->dev, PM_DOMAIN_VFE0);
		if (FUNC0(camss->genpd[PM_DOMAIN_VFE0]))
			return FUNC1(camss->genpd[PM_DOMAIN_VFE0]);

		camss->genpd[PM_DOMAIN_VFE1] = FUNC8(
						camss->dev, PM_DOMAIN_VFE1);
		if (FUNC0(camss->genpd[PM_DOMAIN_VFE1])) {
			FUNC9(camss->genpd[PM_DOMAIN_VFE0],
					     true);
			return FUNC1(camss->genpd[PM_DOMAIN_VFE1]);
		}
	}

	FUNC17(dev);

	return 0;

err_register_subdevs:
	FUNC6(camss);
err_register_entities:
	FUNC24(&camss->v4l2_dev);
err_cleanup:
	FUNC19(&camss->notifier);

	return ret;
}