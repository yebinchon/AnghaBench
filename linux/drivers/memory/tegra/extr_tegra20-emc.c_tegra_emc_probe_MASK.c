#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  notifier_call; } ;
struct tegra_emc {int num_timings; void* pll_m; void* backup_clk; TYPE_10__ clk_nb; void* clk; TYPE_1__* timings; void* emc_mux; void* regs; TYPE_2__* dev; int /*<<< orphan*/  clk_handshake_complete; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (void*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (void*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 void* FUNC10 (TYPE_2__*,char*) ; 
 void* FUNC11 (TYPE_2__*,struct resource*) ; 
 struct tegra_emc* FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_emc*) ; 
 int FUNC14 (struct tegra_emc*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct tegra_emc*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_emc_clk_change_notify ; 
 struct device_node* FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  tegra_emc_isr ; 
 int FUNC22 (struct tegra_emc*,struct device_node*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct device_node *np;
	struct tegra_emc *emc;
	struct resource *res;
	int irq, err;

	/* driver has nothing to do in a case of memory timing absence */
	if (FUNC17(pdev->dev.of_node) == 0) {
		FUNC8(&pdev->dev,
			 "EMC device tree node doesn't have memory timings\n");
		return 0;
	}

	irq = FUNC19(pdev, 0);
	if (irq < 0) {
		FUNC7(&pdev->dev, "interrupt not specified\n");
		FUNC7(&pdev->dev, "please update your device tree\n");
		return irq;
	}

	np = FUNC21(&pdev->dev);
	if (!np)
		return -EINVAL;

	emc = FUNC12(&pdev->dev, sizeof(*emc), GFP_KERNEL);
	if (!emc) {
		FUNC18(np);
		return -ENOMEM;
	}

	FUNC16(&emc->clk_handshake_complete);
	emc->clk_nb.notifier_call = tegra_emc_clk_change_notify;
	emc->dev = &pdev->dev;

	err = FUNC22(emc, np);
	FUNC18(np);
	if (err)
		return err;

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	emc->regs = FUNC11(&pdev->dev, res);
	if (FUNC0(emc->regs))
		return FUNC1(emc->regs);

	err = FUNC15(emc);
	if (err)
		return err;

	err = FUNC13(&pdev->dev, irq, tegra_emc_isr, 0,
			       FUNC9(&pdev->dev), emc);
	if (err) {
		FUNC7(&pdev->dev, "failed to request IRQ#%u: %d\n", irq, err);
		return err;
	}

	emc->clk = FUNC10(&pdev->dev, "emc");
	if (FUNC0(emc->clk)) {
		err = FUNC1(emc->clk);
		FUNC7(&pdev->dev, "failed to get emc clock: %d\n", err);
		return err;
	}

	emc->pll_m = FUNC3(NULL, "pll_m");
	if (FUNC0(emc->pll_m)) {
		err = FUNC1(emc->pll_m);
		FUNC7(&pdev->dev, "failed to get pll_m clock: %d\n", err);
		return err;
	}

	emc->backup_clk = FUNC3(NULL, "pll_p");
	if (FUNC0(emc->backup_clk)) {
		err = FUNC1(emc->backup_clk);
		FUNC7(&pdev->dev, "failed to get pll_p clock: %d\n", err);
		goto put_pll_m;
	}

	emc->emc_mux = FUNC2(emc->clk);
	if (FUNC0(emc->emc_mux)) {
		err = FUNC1(emc->emc_mux);
		FUNC7(&pdev->dev, "failed to get emc_mux clock: %d\n", err);
		goto put_backup;
	}

	err = FUNC4(emc->clk, &emc->clk_nb);
	if (err) {
		FUNC7(&pdev->dev, "failed to register clk notifier: %d\n",
			err);
		goto put_backup;
	}

	/* set DRAM clock rate to maximum */
	err = FUNC14(emc, emc->timings[emc->num_timings - 1].rate);
	if (err) {
		FUNC7(&pdev->dev, "failed to initialize EMC clock rate: %d\n",
			err);
		goto unreg_notifier;
	}

	return 0;

unreg_notifier:
	FUNC5(emc->clk, &emc->clk_nb);
put_backup:
	FUNC6(emc->backup_clk);
put_pll_m:
	FUNC6(emc->pll_m);

	return err;
}