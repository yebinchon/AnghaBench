#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* dev; int /*<<< orphan*/ * clk_gals0; int /*<<< orphan*/ * clk_smi; int /*<<< orphan*/ * clk_apb; } ;
struct mtk_smi_larb {struct device* smi_common_dev; TYPE_1__ smi; TYPE_2__* larb_gen; int /*<<< orphan*/ * base; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ has_gals; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,struct resource*) ; 
 struct mtk_smi_larb* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_smi_larb_component_ops ; 
 TYPE_2__* FUNC7 (struct device*) ; 
 struct platform_device* FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mtk_smi_larb*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct mtk_smi_larb *larb;
	struct resource *res;
	struct device *dev = &pdev->dev;
	struct device_node *smi_node;
	struct platform_device *smi_pdev;

	larb = FUNC6(dev, sizeof(*larb), GFP_KERNEL);
	if (!larb)
		return -ENOMEM;

	larb->larb_gen = FUNC7(dev);
	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	larb->base = FUNC5(dev, res);
	if (FUNC0(larb->base))
		return FUNC1(larb->base);

	larb->smi.clk_apb = FUNC4(dev, "apb");
	if (FUNC0(larb->smi.clk_apb))
		return FUNC1(larb->smi.clk_apb);

	larb->smi.clk_smi = FUNC4(dev, "smi");
	if (FUNC0(larb->smi.clk_smi))
		return FUNC1(larb->smi.clk_smi);

	if (larb->larb_gen->has_gals) {
		/* The larbs may still haven't gals even if the SoC support.*/
		larb->smi.clk_gals0 = FUNC4(dev, "gals");
		if (FUNC1(larb->smi.clk_gals0) == -ENOENT)
			larb->smi.clk_gals0 = NULL;
		else if (FUNC0(larb->smi.clk_gals0))
			return FUNC1(larb->smi.clk_gals0);
	}
	larb->smi.dev = dev;

	smi_node = FUNC10(dev->of_node, "mediatek,smi", 0);
	if (!smi_node)
		return -EINVAL;

	smi_pdev = FUNC8(smi_node);
	FUNC9(smi_node);
	if (smi_pdev) {
		if (!FUNC11(smi_pdev))
			return -EPROBE_DEFER;
		larb->smi_common_dev = &smi_pdev->dev;
	} else {
		FUNC3(dev, "Failed to get the smi_common device\n");
		return -EINVAL;
	}

	FUNC14(dev);
	FUNC13(pdev, larb);
	return FUNC2(dev, &mtk_smi_larb_component_ops);
}