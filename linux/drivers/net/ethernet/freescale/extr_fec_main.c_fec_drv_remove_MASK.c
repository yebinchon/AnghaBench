#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {int /*<<< orphan*/  phy_node; int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_ahb; scalar_t__ reg_phy; int /*<<< orphan*/  tx_timeout_work; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fec_enet_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct fec_enet_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 scalar_t__ FUNC8 (struct device_node*) ; 
 struct net_device* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

__attribute__((used)) static int
FUNC14(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC9(pdev);
	struct fec_enet_private *fep = FUNC5(ndev);
	struct device_node *np = pdev->dev.of_node;

	FUNC0(&fep->tx_timeout_work);
	FUNC3(pdev);
	FUNC13(ndev);
	FUNC2(fep);
	if (fep->reg_phy)
		FUNC12(fep->reg_phy);
	FUNC11(&pdev->dev);
	FUNC10(&pdev->dev);
	FUNC1(fep->clk_ahb);
	FUNC1(fep->clk_ipg);
	if (FUNC8(np))
		FUNC7(np);
	FUNC6(fep->phy_node);
	FUNC4(ndev);

	return 0;
}