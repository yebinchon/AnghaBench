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
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;
struct net_device {scalar_t__ phydev; } ;
struct greth_private {int /*<<< orphan*/  regs; int /*<<< orphan*/  mdio; int /*<<< orphan*/  tx_bd_base_phys; int /*<<< orphan*/  tx_bd_base; int /*<<< orphan*/  rx_bd_base_phys; int /*<<< orphan*/  rx_bd_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct greth_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct net_device* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *of_dev)
{
	struct net_device *ndev = FUNC6(of_dev);
	struct greth_private *greth = FUNC3(ndev);

	/* Free descriptor areas */
	FUNC0(&of_dev->dev, 1024, greth->rx_bd_base, greth->rx_bd_base_phys);

	FUNC0(&of_dev->dev, 1024, greth->tx_bd_base, greth->tx_bd_base_phys);

	if (ndev->phydev)
		FUNC5(ndev->phydev);
	FUNC2(greth->mdio);

	FUNC8(ndev);
	FUNC1(ndev);

	FUNC4(&of_dev->resource[0], greth->regs, FUNC7(&of_dev->resource[0]));

	return 0;
}