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
 size_t EMAC_CLK_HIGH_SPEED ; 
 size_t EMAC_CLK_MDIO ; 
 size_t EMAC_CLK_RX ; 
 size_t EMAC_CLK_SYS ; 
 size_t EMAC_CLK_TX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
				 struct emac_adapter *adpt)
{
	int ret;

	if (FUNC2(&pdev->dev))
		return 0;

	ret = FUNC1(adpt->clk[EMAC_CLK_TX], 125000000);
	if (ret)
		return ret;

	ret = FUNC0(adpt->clk[EMAC_CLK_TX]);
	if (ret)
		return ret;

	ret = FUNC1(adpt->clk[EMAC_CLK_HIGH_SPEED], 125000000);
	if (ret)
		return ret;

	ret = FUNC1(adpt->clk[EMAC_CLK_MDIO], 25000000);
	if (ret)
		return ret;

	ret = FUNC0(adpt->clk[EMAC_CLK_MDIO]);
	if (ret)
		return ret;

	ret = FUNC0(adpt->clk[EMAC_CLK_RX]);
	if (ret)
		return ret;

	return FUNC0(adpt->clk[EMAC_CLK_SYS]);
}