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
struct stm32_dwmac {int irq_pwr_wakeup; int /*<<< orphan*/ * clk_eth_ck; int /*<<< orphan*/ * syscfg_clk; int /*<<< orphan*/ * clk_ethstp; void* eth_ref_clk_sel_reg; void* eth_clk_sel_reg; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 void* FUNC7 (struct device*,char*) ; 
 void* FUNC8 (struct device_node*,char*) ; 
 int FUNC9 (struct platform_device*,char*) ; 
 struct platform_device* FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct stm32_dwmac *dwmac,
			       struct device *dev)
{
	struct platform_device *pdev = FUNC10(dev);
	struct device_node *np = dev->of_node;
	int err = 0;

	/* Gigabit Ethernet 125MHz clock selection. */
	dwmac->eth_clk_sel_reg = FUNC8(np, "st,eth-clk-sel");

	/* Ethernet 50Mhz RMII clock selection */
	dwmac->eth_ref_clk_sel_reg =
		FUNC8(np, "st,eth-ref-clk-sel");

	/*  Get ETH_CLK clocks */
	dwmac->clk_eth_ck = FUNC7(dev, "eth-ck");
	if (FUNC0(dwmac->clk_eth_ck)) {
		FUNC4(dev, "No phy clock provided...\n");
		dwmac->clk_eth_ck = NULL;
	}

	/*  Clock used for low power mode */
	dwmac->clk_ethstp = FUNC7(dev, "ethstp");
	if (FUNC0(dwmac->clk_ethstp)) {
		FUNC2(dev,
			"No ETH peripheral clock provided for CStop mode ...\n");
		return FUNC1(dwmac->clk_ethstp);
	}

	/*  Clock for sysconfig */
	dwmac->syscfg_clk = FUNC7(dev, "syscfg-clk");
	if (FUNC0(dwmac->syscfg_clk)) {
		FUNC2(dev, "No syscfg clock provided...\n");
		return FUNC1(dwmac->syscfg_clk);
	}

	/* Get IRQ information early to have an ability to ask for deferred
	 * probe if needed before we went too far with resource allocation.
	 */
	dwmac->irq_pwr_wakeup = FUNC9(pdev,
							"stm32_pwr_wakeup");
	if (dwmac->irq_pwr_wakeup == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	if (!dwmac->clk_eth_ck && dwmac->irq_pwr_wakeup >= 0) {
		err = FUNC5(&pdev->dev, true);
		if (err) {
			FUNC2(&pdev->dev, "Failed to init wake up irq\n");
			return err;
		}
		err = FUNC3(&pdev->dev,
						    dwmac->irq_pwr_wakeup);
		if (err) {
			FUNC2(&pdev->dev, "Failed to set wake up irq\n");
			FUNC5(&pdev->dev, false);
		}
		FUNC6(&pdev->dev, false);
	}
	return err;
}