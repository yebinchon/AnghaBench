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
 int /*<<< orphan*/  LAN87XX_INTERRUPT_MASK ; 
 int /*<<< orphan*/  LAN87XX_INTERRUPT_SOURCE ; 
 int LAN87XX_MASK_LINK_DOWN ; 
 int LAN87XX_MASK_LINK_UP ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int rc, val = 0;

	if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
		/* unmask all source and clear them before enable */
		rc = FUNC1(phydev, LAN87XX_INTERRUPT_MASK, 0x7FFF);
		rc = FUNC0(phydev, LAN87XX_INTERRUPT_SOURCE);
		val = LAN87XX_MASK_LINK_UP | LAN87XX_MASK_LINK_DOWN;
	}

	rc = FUNC1(phydev, LAN87XX_INTERRUPT_MASK, val);

	return rc < 0 ? rc : 0;
}