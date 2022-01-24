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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vsc8531_private {int /*<<< orphan*/  base_addr; } ;
struct TYPE_3__ {TYPE_2__* bus; int /*<<< orphan*/  dev; } ;
struct phy_device {TYPE_1__ mdio; struct vsc8531_private* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev, u32 regnum, u16 val)
{
	struct vsc8531_private *priv = phydev->priv;

	if (FUNC4(!FUNC3(&phydev->mdio.bus->mdio_lock))) {
		FUNC1(&phydev->mdio.dev, "MDIO bus lock not held!\n");
		FUNC2();
	}

	return FUNC0(phydev->mdio.bus, priv->base_addr, regnum, val);
}