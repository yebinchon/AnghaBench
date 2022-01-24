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
typedef  int u8 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM54XX_SHD_SCR2 ; 
 int BCM54XX_SHD_SCR2_WSPD_RTRY_DIS ; 
 int BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK ; 
 int BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET ; 
 int BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT ; 
#define  DOWNSHIFT_DEV_DEFAULT_COUNT 128 
 int DOWNSHIFT_DEV_DISABLE ; 
 int ERANGE ; 
 int MII_BCM54XX_AUXCTL_MISC_WREN ; 
 int /*<<< orphan*/  MII_BCM54XX_AUXCTL_SHDWSEL_MISC ; 
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct phy_device *phydev, u8 count)
{
	int val = 0, ret = 0;

	/* Range check the number given */
	if (count - BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET >
	    BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK &&
	    count != DOWNSHIFT_DEV_DEFAULT_COUNT) {
		return -ERANGE;
	}

	val = FUNC0(phydev, MII_BCM54XX_AUXCTL_SHDWSEL_MISC);
	if (val < 0)
		return val;

	/* Se the write enable bit */
	val |= MII_BCM54XX_AUXCTL_MISC_WREN;

	if (count == DOWNSHIFT_DEV_DISABLE) {
		val &= ~MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN;
		return FUNC1(phydev,
					    MII_BCM54XX_AUXCTL_SHDWSEL_MISC,
					    val);
	} else {
		val |= MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN;
		ret = FUNC1(phydev,
					   MII_BCM54XX_AUXCTL_SHDWSEL_MISC,
					   val);
		if (ret < 0)
			return ret;
	}

	val = FUNC2(phydev, BCM54XX_SHD_SCR2);
	val &= ~(BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK <<
		 BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT |
		 BCM54XX_SHD_SCR2_WSPD_RTRY_DIS);

	switch (count) {
	case 1:
		val |= BCM54XX_SHD_SCR2_WSPD_RTRY_DIS;
		break;
	case DOWNSHIFT_DEV_DEFAULT_COUNT:
		val |= 1 << BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT;
		break;
	default:
		val |= (count - BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET) <<
			BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT;
		break;
	}

	return FUNC3(phydev, BCM54XX_SHD_SCR2, val);
}