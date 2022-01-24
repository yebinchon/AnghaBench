#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct et131x_adapter {TYPE_1__* netdev; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct et131x_adapter *adapter, bool down)
{
	u16 data;
	struct  phy_device *phydev = adapter->netdev->phydev;

	FUNC0(adapter, MII_BMCR, &data);
	data &= ~BMCR_PDOWN;
	if (down)
		data |= BMCR_PDOWN;
	FUNC1(adapter, phydev->mdio.addr, MII_BMCR, data);
}