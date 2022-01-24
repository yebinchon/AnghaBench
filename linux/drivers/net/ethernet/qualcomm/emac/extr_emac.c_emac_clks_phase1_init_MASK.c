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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct emac_adapter {int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 size_t EMAC_CLK_AXI ; 
 size_t EMAC_CLK_CFG_AHB ; 
 size_t EMAC_CLK_HIGH_SPEED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct platform_device*,struct emac_adapter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				 struct emac_adapter *adpt)
{
	int ret;

	/* On ACPI platforms, clocks are controlled by firmware and/or
	 * ACPI, not by drivers.
	 */
	if (FUNC3(&pdev->dev))
		return 0;

	ret = FUNC2(pdev, adpt);
	if (ret)
		return ret;

	ret = FUNC0(adpt->clk[EMAC_CLK_AXI]);
	if (ret)
		return ret;

	ret = FUNC0(adpt->clk[EMAC_CLK_CFG_AHB]);
	if (ret)
		return ret;

	ret = FUNC1(adpt->clk[EMAC_CLK_HIGH_SPEED], 19200000);
	if (ret)
		return ret;

	return FUNC0(adpt->clk[EMAC_CLK_HIGH_SPEED]);
}