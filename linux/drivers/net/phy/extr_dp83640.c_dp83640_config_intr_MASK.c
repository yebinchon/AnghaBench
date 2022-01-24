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
 int /*<<< orphan*/  MII_DP83640_MICR ; 
 int MII_DP83640_MICR_IE ; 
 int MII_DP83640_MICR_OE ; 
 int /*<<< orphan*/  MII_DP83640_MISR ; 
 int MII_DP83640_MISR_ANC_INT_EN ; 
 int MII_DP83640_MISR_DUP_INT_EN ; 
 int MII_DP83640_MISR_LINK_INT_EN ; 
 int MII_DP83640_MISR_SPD_INT_EN ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int micr;
	int misr;
	int err;

	if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
		misr = FUNC0(phydev, MII_DP83640_MISR);
		if (misr < 0)
			return misr;
		misr |=
			(MII_DP83640_MISR_ANC_INT_EN |
			MII_DP83640_MISR_DUP_INT_EN |
			MII_DP83640_MISR_SPD_INT_EN |
			MII_DP83640_MISR_LINK_INT_EN);
		err = FUNC1(phydev, MII_DP83640_MISR, misr);
		if (err < 0)
			return err;

		micr = FUNC0(phydev, MII_DP83640_MICR);
		if (micr < 0)
			return micr;
		micr |=
			(MII_DP83640_MICR_OE |
			MII_DP83640_MICR_IE);
		return FUNC1(phydev, MII_DP83640_MICR, micr);
	} else {
		micr = FUNC0(phydev, MII_DP83640_MICR);
		if (micr < 0)
			return micr;
		micr &=
			~(MII_DP83640_MICR_OE |
			MII_DP83640_MICR_IE);
		err = FUNC1(phydev, MII_DP83640_MICR, micr);
		if (err < 0)
			return err;

		misr = FUNC0(phydev, MII_DP83640_MISR);
		if (misr < 0)
			return misr;
		misr &=
			~(MII_DP83640_MISR_ANC_INT_EN |
			MII_DP83640_MISR_DUP_INT_EN |
			MII_DP83640_MISR_SPD_INT_EN |
			MII_DP83640_MISR_LINK_INT_EN);
		return FUNC1(phydev, MII_DP83640_MISR, misr);
	}
}