#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {void* pad_clk; void* nfi_clk; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct mtk_nfc {void* ecc; TYPE_2__ clk; void* regs; struct device* dev; int /*<<< orphan*/  caps; TYPE_1__ controller; int /*<<< orphan*/  chips; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 struct mtk_nfc* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int,char*,struct mtk_nfc*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  mtk_nfc_controller_ops ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  mtk_nfc_irq ; 
 int FUNC13 (struct device*,struct mtk_nfc*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 void* FUNC16 (struct device_node*) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct mtk_nfc*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct mtk_nfc *nfc;
	struct resource *res;
	int ret, irq;

	nfc = FUNC7(dev, sizeof(*nfc), GFP_KERNEL);
	if (!nfc)
		return -ENOMEM;

	FUNC14(&nfc->controller);
	FUNC1(&nfc->chips);
	nfc->controller.ops = &mtk_nfc_controller_ops;

	/* probe defer if not ready */
	nfc->ecc = FUNC16(np);
	if (FUNC2(nfc->ecc))
		return FUNC3(nfc->ecc);
	else if (!nfc->ecc)
		return -ENODEV;

	nfc->caps = FUNC15(dev);
	nfc->dev = dev;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	nfc->regs = FUNC6(dev, res);
	if (FUNC2(nfc->regs)) {
		ret = FUNC3(nfc->regs);
		goto release_ecc;
	}

	nfc->clk.nfi_clk = FUNC5(dev, "nfi_clk");
	if (FUNC2(nfc->clk.nfi_clk)) {
		FUNC4(dev, "no clk\n");
		ret = FUNC3(nfc->clk.nfi_clk);
		goto release_ecc;
	}

	nfc->clk.pad_clk = FUNC5(dev, "pad_clk");
	if (FUNC2(nfc->clk.pad_clk)) {
		FUNC4(dev, "no pad clk\n");
		ret = FUNC3(nfc->clk.pad_clk);
		goto release_ecc;
	}

	ret = FUNC12(dev, &nfc->clk);
	if (ret)
		goto release_ecc;

	irq = FUNC17(pdev, 0);
	if (irq < 0) {
		FUNC4(dev, "no nfi irq resource\n");
		ret = -EINVAL;
		goto clk_disable;
	}

	ret = FUNC8(dev, irq, mtk_nfc_irq, 0x0, "mtk-nand", nfc);
	if (ret) {
		FUNC4(dev, "failed to request nfi irq\n");
		goto clk_disable;
	}

	ret = FUNC9(dev, FUNC0(32));
	if (ret) {
		FUNC4(dev, "failed to set dma mask\n");
		goto clk_disable;
	}

	FUNC19(pdev, nfc);

	ret = FUNC13(dev, nfc);
	if (ret) {
		FUNC4(dev, "failed to init nand chips\n");
		goto clk_disable;
	}

	return 0;

clk_disable:
	FUNC11(&nfc->clk);

release_ecc:
	FUNC10(nfc->ecc);

	return ret;
}