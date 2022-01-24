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
struct platform_device {int dummy; } ;
struct net_device {scalar_t__ phydev; } ;
struct mv643xx_eth_private {struct net_device* dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  tx_timeout_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct mv643xx_eth_private* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mv643xx_eth_private *mp = FUNC5(pdev);
	struct net_device *dev = mp->dev;

	FUNC6(mp->dev);
	if (dev->phydev)
		FUNC4(dev->phydev);
	FUNC1(&mp->tx_timeout_task);

	if (!FUNC0(mp->clk))
		FUNC2(mp->clk);

	FUNC3(mp->dev);

	return 0;
}