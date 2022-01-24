#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mtk_vcodec_clk {int clk_num; struct mtk_vcodec_clk_info* clk_info; } ;
struct mtk_vcodec_pm {TYPE_1__* dev; TYPE_1__* larbvdec; struct mtk_vcodec_clk vdec_clk; struct mtk_vcodec_dev* mtkdev; } ;
struct mtk_vcodec_dev {struct platform_device* plat_dev; struct mtk_vcodec_pm pm; } ;
struct mtk_vcodec_clk_info {int /*<<< orphan*/  vcodec_clk; int /*<<< orphan*/  clk_name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct mtk_vcodec_clk_info* FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct platform_device* FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int FUNC12(struct mtk_vcodec_dev *mtkdev)
{
	struct device_node *node;
	struct platform_device *pdev;
	struct mtk_vcodec_pm *pm;
	struct mtk_vcodec_clk *dec_clk;
	struct mtk_vcodec_clk_info *clk_info;
	int i = 0, ret = 0;

	pdev = mtkdev->plat_dev;
	pm = &mtkdev->pm;
	pm->mtkdev = mtkdev;
	dec_clk = &pm->vdec_clk;
	node = FUNC8(pdev->dev.of_node, "mediatek,larb", 0);
	if (!node) {
		FUNC5("of_parse_phandle mediatek,larb fail!");
		return -1;
	}

	pdev = FUNC6(node);
	FUNC7(node);
	if (FUNC2(!pdev)) {
		return -1;
	}
	pm->larbvdec = &pdev->dev;
	pdev = mtkdev->plat_dev;
	pm->dev = &pdev->dev;

	dec_clk->clk_num =
		FUNC9(pdev->dev.of_node, "clock-names");
	if (dec_clk->clk_num > 0) {
		dec_clk->clk_info = FUNC4(&pdev->dev,
			dec_clk->clk_num, sizeof(*clk_info),
			GFP_KERNEL);
		if (!dec_clk->clk_info)
			return -ENOMEM;
	} else {
		FUNC5("Failed to get vdec clock count");
		return -EINVAL;
	}

	for (i = 0; i < dec_clk->clk_num; i++) {
		clk_info = &dec_clk->clk_info[i];
		ret = FUNC10(pdev->dev.of_node,
			"clock-names", i, &clk_info->clk_name);
		if (ret) {
			FUNC5("Failed to get clock name id = %d", i);
			return ret;
		}
		clk_info->vcodec_clk = FUNC3(&pdev->dev,
			clk_info->clk_name);
		if (FUNC0(clk_info->vcodec_clk)) {
			FUNC5("devm_clk_get (%d)%s fail", i,
				clk_info->clk_name);
			return FUNC1(clk_info->vcodec_clk);
		}
	}

	FUNC11(&pdev->dev);

	return ret;
}