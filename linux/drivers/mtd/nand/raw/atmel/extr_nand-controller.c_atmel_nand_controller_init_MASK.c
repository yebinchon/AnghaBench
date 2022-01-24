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
struct device {TYPE_1__* parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct atmel_nand_controller_caps {scalar_t__ legacy_of_bindings; scalar_t__ has_dma; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct atmel_nand_controller {int /*<<< orphan*/  smc; int /*<<< orphan*/  mck; struct atmel_nand_controller_caps const* caps; struct device* dev; int /*<<< orphan*/  dmac; int /*<<< orphan*/  pmecc; int /*<<< orphan*/  chips; TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_nand_avoid_dma ; 
 int /*<<< orphan*/  atmel_nand_controller_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct atmel_nand_controller*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 

__attribute__((used)) static int FUNC14(struct atmel_nand_controller *nc,
				struct platform_device *pdev,
				const struct atmel_nand_controller_caps *caps)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	int ret;

	FUNC8(&nc->base);
	nc->base.ops = &atmel_nand_controller_ops;
	FUNC0(&nc->chips);
	nc->dev = dev;
	nc->caps = caps;

	FUNC12(pdev, nc);

	nc->pmecc = FUNC4(dev);
	if (FUNC1(nc->pmecc)) {
		ret = FUNC2(nc->pmecc);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "Could not get PMECC object (err = %d)\n",
				ret);
		return ret;
	}

	if (nc->caps->has_dma && !atmel_nand_avoid_dma) {
		dma_cap_mask_t mask;

		FUNC6(mask);
		FUNC5(DMA_MEMCPY, mask);

		nc->dmac = FUNC7(mask, NULL, NULL);
		if (!nc->dmac)
			FUNC3(nc->dev, "Failed to request DMA channel\n");
	}

	/* We do not retrieve the SMC syscon when parsing old DTs. */
	if (nc->caps->legacy_of_bindings)
		return 0;

	nc->mck = FUNC9(dev->parent->of_node, 0);
	if (FUNC1(nc->mck)) {
		FUNC3(dev, "Failed to retrieve MCK clk\n");
		return FUNC2(nc->mck);
	}

	np = FUNC11(dev->parent->of_node, "atmel,smc", 0);
	if (!np) {
		FUNC3(dev, "Missing or invalid atmel,smc property\n");
		return -EINVAL;
	}

	nc->smc = FUNC13(np);
	FUNC10(np);
	if (FUNC1(nc->smc)) {
		ret = FUNC2(nc->smc);
		FUNC3(dev, "Could not get SMC regmap (err = %d)\n", ret);
		return ret;
	}

	return 0;
}