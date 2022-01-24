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
struct temac_local {int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; } ;
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct temac_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev)
{
	struct temac_local *lp = FUNC2(ndev);
	struct phy_device *phydev = ndev->phydev;

	FUNC0(&ndev->dev, "temac_close()\n");

	FUNC1(lp->tx_irq, ndev);
	FUNC1(lp->rx_irq, ndev);

	if (phydev)
		FUNC3(phydev);

	FUNC4(ndev);

	return 0;
}