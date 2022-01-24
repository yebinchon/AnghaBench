#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vsc8531_private {int nleds; int /*<<< orphan*/ * leds_mode; int /*<<< orphan*/  rate_magic; } ;
struct phy_device {TYPE_1__* drv; int /*<<< orphan*/  interface; struct vsc8531_private* priv; } ;
struct TYPE_2__ {int phy_id; int phy_id_mask; } ;

/* Variables and functions */
 int PHY_ID_VSC8530 ; 
 int PHY_ID_VSC8531 ; 
 int PHY_ID_VSC8540 ; 
 int PHY_ID_VSC8541 ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int rc, i, phy_id;
	struct vsc8531_private *vsc8531 = phydev->priv;

	rc = FUNC1(phydev);
	if (rc)
		return rc;

	rc = FUNC5(phydev, phydev->interface);
	if (rc)
		return rc;

	rc = FUNC2(phydev, vsc8531->rate_magic);
	if (rc)
		return rc;

	phy_id = phydev->drv->phy_id & phydev->drv->phy_id_mask;
	if (PHY_ID_VSC8531 == phy_id || PHY_ID_VSC8541 == phy_id ||
	    PHY_ID_VSC8530 == phy_id || PHY_ID_VSC8540 == phy_id) {
		rc = FUNC0(phydev);
		if (rc)
			return rc;
	}

	rc = FUNC3(phydev);
	if (rc)
		return rc;

	for (i = 0; i < vsc8531->nleds; i++) {
		rc = FUNC4(phydev, i, vsc8531->leds_mode[i]);
		if (rc)
			return rc;
	}

	return 0;
}