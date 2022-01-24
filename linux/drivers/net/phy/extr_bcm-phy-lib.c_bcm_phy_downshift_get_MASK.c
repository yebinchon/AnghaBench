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
 int DOWNSHIFT_DEV_DISABLE ; 
 int /*<<< orphan*/  MII_BCM54XX_AUXCTL_SHDWSEL_MISC ; 
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 

int FUNC2(struct phy_device *phydev, u8 *count)
{
	int val;

	val = FUNC0(phydev, MII_BCM54XX_AUXCTL_SHDWSEL_MISC);
	if (val < 0)
		return val;

	/* Check if wirespeed is enabled or not */
	if (!(val & MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN)) {
		*count = DOWNSHIFT_DEV_DISABLE;
		return 0;
	}

	val = FUNC1(phydev, BCM54XX_SHD_SCR2);
	if (val < 0)
		return val;

	/* Downgrade after one link attempt */
	if (val & BCM54XX_SHD_SCR2_WSPD_RTRY_DIS) {
		*count = 1;
	} else {
		/* Downgrade after configured retry count */
		val >>= BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT;
		val &= BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK;
		*count = val + BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET;
	}

	return 0;
}