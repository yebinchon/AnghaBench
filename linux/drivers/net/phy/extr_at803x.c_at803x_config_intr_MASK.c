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
struct phy_device {scalar_t__ interrupts; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT803X_INTR_ENABLE ; 
 int AT803X_INTR_ENABLE_AUTONEG_ERR ; 
 int AT803X_INTR_ENABLE_DUPLEX_CHANGED ; 
 int AT803X_INTR_ENABLE_LINK_FAIL ; 
 int AT803X_INTR_ENABLE_LINK_SUCCESS ; 
 int AT803X_INTR_ENABLE_SPEED_CHANGED ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int err;
	int value;

	value = FUNC0(phydev, AT803X_INTR_ENABLE);

	if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
		value |= AT803X_INTR_ENABLE_AUTONEG_ERR;
		value |= AT803X_INTR_ENABLE_SPEED_CHANGED;
		value |= AT803X_INTR_ENABLE_DUPLEX_CHANGED;
		value |= AT803X_INTR_ENABLE_LINK_FAIL;
		value |= AT803X_INTR_ENABLE_LINK_SUCCESS;

		err = FUNC1(phydev, AT803X_INTR_ENABLE, value);
	}
	else
		err = FUNC1(phydev, AT803X_INTR_ENABLE, 0);

	return err;
}