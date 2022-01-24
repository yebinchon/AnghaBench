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
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int /*<<< orphan*/ * phydev; } ;
struct macb {int /*<<< orphan*/  phy_node; int /*<<< orphan*/  tsu_clk; int /*<<< orphan*/  rx_clk; int /*<<< orphan*/  pclk; int /*<<< orphan*/  hclk; int /*<<< orphan*/  tx_clk; int /*<<< orphan*/  mii_bus; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct macb* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 scalar_t__ FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct net_device *dev;
	struct macb *bp;
	struct device_node *np = pdev->dev.of_node;

	dev = FUNC10(pdev);

	if (dev) {
		bp = FUNC5(dev);
		if (dev->phydev)
			FUNC9(dev->phydev);
		FUNC4(bp->mii_bus);
		if (np && FUNC8(np))
			FUNC7(np);
		dev->phydev = NULL;
		FUNC3(bp->mii_bus);

		FUNC15(dev);
		FUNC11(&pdev->dev);
		FUNC12(&pdev->dev);
		if (!FUNC14(&pdev->dev)) {
			FUNC0(bp->tx_clk);
			FUNC1(bp->tx_clk);
			FUNC0(bp->hclk);
			FUNC0(bp->pclk);
			FUNC0(bp->rx_clk);
			FUNC0(bp->tsu_clk);
			FUNC13(&pdev->dev);
		}
		FUNC6(bp->phy_node);
		FUNC2(dev);
	}

	return 0;
}