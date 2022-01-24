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
struct device {int dummy; } ;
struct platform_device {struct device dev; TYPE_1__* id_entry; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct marvell_nfc {int /*<<< orphan*/ * core_clk; int /*<<< orphan*/ * reg_clk; void* caps; int /*<<< orphan*/ * regs; int /*<<< orphan*/  chips; TYPE_2__ controller; struct device* dev; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NDCR_ALL_INT ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 void* FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (struct device*,struct resource*) ; 
 struct marvell_nfc* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct marvell_nfc*) ; 
 int FUNC11 (struct device*,struct marvell_nfc*) ; 
 int /*<<< orphan*/  marvell_nand_controller_ops ; 
 int /*<<< orphan*/  FUNC12 (struct marvell_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct marvell_nfc*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct marvell_nfc*) ; 
 int /*<<< orphan*/  marvell_nfc_isr ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 void* FUNC16 (struct device*) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct marvell_nfc*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *r;
	struct marvell_nfc *nfc;
	int ret;
	int irq;

	nfc = FUNC9(&pdev->dev, sizeof(struct marvell_nfc),
			   GFP_KERNEL);
	if (!nfc)
		return -ENOMEM;

	nfc->dev = dev;
	FUNC15(&nfc->controller);
	nfc->controller.ops = &marvell_nand_controller_ops;
	FUNC1(&nfc->chips);

	r = FUNC18(pdev, IORESOURCE_MEM, 0);
	nfc->regs = FUNC8(dev, r);
	if (FUNC2(nfc->regs))
		return FUNC3(nfc->regs);

	irq = FUNC17(pdev, 0);
	if (irq < 0) {
		FUNC6(dev, "failed to retrieve irq\n");
		return irq;
	}

	nfc->core_clk = FUNC7(&pdev->dev, "core");

	/* Managed the legacy case (when the first clock was not named) */
	if (nfc->core_clk == FUNC0(-ENOENT))
		nfc->core_clk = FUNC7(&pdev->dev, NULL);

	if (FUNC2(nfc->core_clk))
		return FUNC3(nfc->core_clk);

	ret = FUNC5(nfc->core_clk);
	if (ret)
		return ret;

	nfc->reg_clk = FUNC7(&pdev->dev, "reg");
	if (FUNC2(nfc->reg_clk)) {
		if (FUNC3(nfc->reg_clk) != -ENOENT) {
			ret = FUNC3(nfc->reg_clk);
			goto unprepare_core_clk;
		}

		nfc->reg_clk = NULL;
	}

	ret = FUNC5(nfc->reg_clk);
	if (ret)
		goto unprepare_core_clk;

	FUNC13(nfc, NDCR_ALL_INT);
	FUNC12(nfc, NDCR_ALL_INT);
	ret = FUNC10(dev, irq, marvell_nfc_isr,
			       0, "marvell-nfc", nfc);
	if (ret)
		goto unprepare_reg_clk;

	/* Get NAND controller capabilities */
	if (pdev->id_entry)
		nfc->caps = (void *)pdev->id_entry->driver_data;
	else
		nfc->caps = FUNC16(&pdev->dev);

	if (!nfc->caps) {
		FUNC6(dev, "Could not retrieve NFC caps\n");
		ret = -EINVAL;
		goto unprepare_reg_clk;
	}

	/* Init the controller and then probe the chips */
	ret = FUNC14(nfc);
	if (ret)
		goto unprepare_reg_clk;

	FUNC19(pdev, nfc);

	ret = FUNC11(dev, nfc);
	if (ret)
		goto unprepare_reg_clk;

	return 0;

unprepare_reg_clk:
	FUNC4(nfc->reg_clk);
unprepare_core_clk:
	FUNC4(nfc->core_clk);

	return ret;
}