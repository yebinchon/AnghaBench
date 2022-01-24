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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk_vcodec_clk {int clk_num; struct mtk_vcodec_clk_info* clk_info; } ;
struct mtk_vcodec_pm {struct device* dev; struct device* larbvenclt; struct device* larbvenc; struct mtk_vcodec_clk venc_clk; struct mtk_vcodec_dev* mtkdev; } ;
struct mtk_vcodec_dev {struct platform_device* plat_dev; struct mtk_vcodec_pm pm; } ;
struct mtk_vcodec_clk_info {int /*<<< orphan*/  vcodec_clk; int /*<<< orphan*/  clk_name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 struct mtk_vcodec_clk_info* FUNC3 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_vcodec_pm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct platform_device* FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 

int FUNC11(struct mtk_vcodec_dev *mtkdev)
{
	struct device_node *node;
	struct platform_device *pdev;
	struct mtk_vcodec_pm *pm;
	struct mtk_vcodec_clk *enc_clk;
	struct mtk_vcodec_clk_info *clk_info;
	int ret = 0, i = 0;
	struct device *dev;

	pdev = mtkdev->plat_dev;
	pm = &mtkdev->pm;
	FUNC4(pm, 0, sizeof(struct mtk_vcodec_pm));
	pm->mtkdev = mtkdev;
	pm->dev = &pdev->dev;
	dev = &pdev->dev;
	enc_clk = &pm->venc_clk;

	node = FUNC8(dev->of_node, "mediatek,larb", 0);
	if (!node) {
		FUNC5("no mediatek,larb found");
		return -ENODEV;
	}
	pdev = FUNC6(node);
	FUNC7(node);
	if (!pdev) {
		FUNC5("no mediatek,larb device found");
		return -ENODEV;
	}
	pm->larbvenc = &pdev->dev;

	node = FUNC8(dev->of_node, "mediatek,larb", 1);
	if (!node) {
		FUNC5("no mediatek,larb found");
		return -ENODEV;
	}

	pdev = FUNC6(node);
	FUNC7(node);
	if (!pdev) {
		FUNC5("no mediatek,larb device found");
		return -ENODEV;
	}

	pm->larbvenclt = &pdev->dev;
	pdev = mtkdev->plat_dev;
	pm->dev = &pdev->dev;

	enc_clk->clk_num = FUNC9(pdev->dev.of_node,
		"clock-names");
	if (enc_clk->clk_num > 0) {
		enc_clk->clk_info = FUNC3(&pdev->dev,
			enc_clk->clk_num, sizeof(*clk_info),
			GFP_KERNEL);
		if (!enc_clk->clk_info)
			return -ENOMEM;
	} else {
		FUNC5("Failed to get venc clock count");
		return -EINVAL;
	}

	for (i = 0; i < enc_clk->clk_num; i++) {
		clk_info = &enc_clk->clk_info[i];
		ret = FUNC10(pdev->dev.of_node,
			"clock-names", i, &clk_info->clk_name);
		if (ret) {
			FUNC5("venc failed to get clk name %d", i);
			return ret;
		}
		clk_info->vcodec_clk = FUNC2(&pdev->dev,
			clk_info->clk_name);
		if (FUNC0(clk_info->vcodec_clk)) {
			FUNC5("venc devm_clk_get (%d)%s fail", i,
				clk_info->clk_name);
			return FUNC1(clk_info->vcodec_clk);
		}
	}

	return ret;
}