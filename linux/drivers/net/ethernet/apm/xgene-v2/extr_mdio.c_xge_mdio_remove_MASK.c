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
struct xge_pdata {struct mii_bus* mdio_bus; } ;
struct net_device {scalar_t__ phydev; } ;
struct mii_bus {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ MDIOBUS_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 struct xge_pdata* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC2(ndev);
	struct mii_bus *mdio_bus = pdata->mdio_bus;

	if (ndev->phydev)
		FUNC3(ndev->phydev);

	if (mdio_bus->state == MDIOBUS_REGISTERED)
		FUNC1(mdio_bus);

	FUNC0(mdio_bus);
}