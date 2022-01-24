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
 int DP83848_INT_EN_MASK ; 
 int /*<<< orphan*/  DP83848_MICR ; 
 int DP83848_MICR_INTEN ; 
 int DP83848_MICR_INT_OE ; 
 int /*<<< orphan*/  DP83848_MISR ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int control, ret;

	control = FUNC0(phydev, DP83848_MICR);
	if (control < 0)
		return control;

	if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
		control |= DP83848_MICR_INT_OE;
		control |= DP83848_MICR_INTEN;

		ret = FUNC1(phydev, DP83848_MISR, DP83848_INT_EN_MASK);
		if (ret < 0)
			return ret;
	} else {
		control &= ~DP83848_MICR_INTEN;
	}

	return FUNC1(phydev, DP83848_MICR, control);
}