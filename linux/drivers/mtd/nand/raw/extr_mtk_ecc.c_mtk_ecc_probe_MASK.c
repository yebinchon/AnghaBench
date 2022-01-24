#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_ecc {int /*<<< orphan*/  lock; struct device* dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; void* eccdata; TYPE_1__* caps; } ;
struct TYPE_2__ {size_t num_ecc_strength; size_t* ecc_strength; size_t parity_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 void* FUNC7 (struct device*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int,char*,struct mtk_ecc*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_ecc_irq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (struct device*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct mtk_ecc*) ; 
 size_t FUNC15 (size_t,int) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_ecc *ecc;
	struct resource *res;
	u32 max_eccdata_size;
	int irq, ret;

	ecc = FUNC7(dev, sizeof(*ecc), GFP_KERNEL);
	if (!ecc)
		return -ENOMEM;

	ecc->caps = FUNC11(dev);

	max_eccdata_size = ecc->caps->num_ecc_strength - 1;
	max_eccdata_size = ecc->caps->ecc_strength[max_eccdata_size];
	max_eccdata_size = (max_eccdata_size * ecc->caps->parity_bits + 7) >> 3;
	max_eccdata_size = FUNC15(max_eccdata_size, 4);
	ecc->eccdata = FUNC7(dev, max_eccdata_size, GFP_KERNEL);
	if (!ecc->eccdata)
		return -ENOMEM;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	ecc->regs = FUNC6(dev, res);
	if (FUNC1(ecc->regs)) {
		FUNC3(dev, "failed to map regs: %ld\n", FUNC2(ecc->regs));
		return FUNC2(ecc->regs);
	}

	ecc->clk = FUNC5(dev, NULL);
	if (FUNC1(ecc->clk)) {
		FUNC3(dev, "failed to get clock: %ld\n", FUNC2(ecc->clk));
		return FUNC2(ecc->clk);
	}

	irq = FUNC12(pdev, 0);
	if (irq < 0) {
		FUNC3(dev, "failed to get irq: %d\n", irq);
		return irq;
	}

	ret = FUNC9(dev, FUNC0(32));
	if (ret) {
		FUNC3(dev, "failed to set DMA mask\n");
		return ret;
	}

	ret = FUNC8(dev, irq, mtk_ecc_irq, 0x0, "mtk-ecc", ecc);
	if (ret) {
		FUNC3(dev, "failed to request irq\n");
		return -EINVAL;
	}

	ecc->dev = dev;
	FUNC10(&ecc->lock);
	FUNC14(pdev, ecc);
	FUNC4(dev, "probed\n");

	return 0;
}