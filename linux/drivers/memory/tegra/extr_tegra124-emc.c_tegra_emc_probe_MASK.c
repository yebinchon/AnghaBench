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
typedef  int u32 ;
struct tegra_emc {scalar_t__ num_timings; int /*<<< orphan*/  mc; int /*<<< orphan*/  regs; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct resource*) ; 
 struct tegra_emc* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct tegra_emc*) ; 
 int FUNC7 (struct tegra_emc*) ; 
 struct platform_device* FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct tegra_emc*) ; 
 struct device_node* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct tegra_emc*,struct device_node*) ; 
 int FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct platform_device *mc;
	struct device_node *np;
	struct tegra_emc *emc;
	struct resource *res;
	u32 ram_code;
	int err;

	emc = FUNC5(&pdev->dev, sizeof(*emc), GFP_KERNEL);
	if (!emc)
		return -ENOMEM;

	emc->dev = &pdev->dev;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	emc->regs = FUNC4(&pdev->dev, res);
	if (FUNC1(emc->regs))
		return FUNC2(emc->regs);

	np = FUNC10(pdev->dev.of_node, "nvidia,memory-controller", 0);
	if (!np) {
		FUNC3(&pdev->dev, "could not get memory controller\n");
		return -ENOENT;
	}

	mc = FUNC8(np);
	FUNC9(np);
	if (!mc)
		return -ENOENT;

	emc->mc = FUNC11(mc);
	if (!emc->mc)
		return -EPROBE_DEFER;

	ram_code = FUNC16();

	np = FUNC14(pdev->dev.of_node, ram_code);
	if (!np) {
		FUNC3(&pdev->dev,
			"no memory timings for RAM code %u found in DT\n",
			ram_code);
		return -ENOENT;
	}

	err = FUNC15(emc, np);
	FUNC9(np);
	if (err)
		return err;

	if (emc->num_timings == 0) {
		FUNC3(&pdev->dev,
			"no memory timings for RAM code %u registered\n",
			ram_code);
		return -ENOENT;
	}

	err = FUNC7(emc);
	if (err) {
		FUNC3(&pdev->dev, "EMC initialization failed: %d\n", err);
		return err;
	}

	FUNC13(pdev, emc);

	if (FUNC0(CONFIG_DEBUG_FS))
		FUNC6(&pdev->dev, emc);

	return 0;
}