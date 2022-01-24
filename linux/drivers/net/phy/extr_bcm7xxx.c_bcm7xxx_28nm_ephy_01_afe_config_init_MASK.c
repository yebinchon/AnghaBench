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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BCM7XXX_SHD_2_ADDR_CTRL ; 
 int /*<<< orphan*/  MII_BCM7XXX_SHD_2_BIAS_TRIM ; 
 int /*<<< orphan*/  MII_BCM7XXX_SHD_2_CTRL_STAT ; 
 int MII_BCM7XXX_SHD_3_TL4 ; 
 int /*<<< orphan*/  MII_BCM7XXX_SHD_MODE_2 ; 
 int /*<<< orphan*/  MII_BCM7XXX_TEST ; 
 int /*<<< orphan*/  MII_BCM7XXX_TL4_RST_MSK ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int ret;

	/* set shadow mode 2 */
	ret = FUNC0(phydev, MII_BCM7XXX_TEST,
			       MII_BCM7XXX_SHD_MODE_2, 0);
	if (ret < 0)
		return ret;

	/* Set current trim values INT_trim = -1, Ext_trim =0 */
	ret = FUNC1(phydev, MII_BCM7XXX_SHD_2_BIAS_TRIM, 0x3BE0);
	if (ret < 0)
		goto reset_shadow_mode;

	/* Cal reset */
	ret = FUNC1(phydev, MII_BCM7XXX_SHD_2_ADDR_CTRL,
			MII_BCM7XXX_SHD_3_TL4);
	if (ret < 0)
		goto reset_shadow_mode;
	ret = FUNC0(phydev, MII_BCM7XXX_SHD_2_CTRL_STAT,
			       MII_BCM7XXX_TL4_RST_MSK, 0);
	if (ret < 0)
		goto reset_shadow_mode;

	/* Cal reset disable */
	ret = FUNC1(phydev, MII_BCM7XXX_SHD_2_ADDR_CTRL,
			MII_BCM7XXX_SHD_3_TL4);
	if (ret < 0)
		goto reset_shadow_mode;
	ret = FUNC0(phydev, MII_BCM7XXX_SHD_2_CTRL_STAT,
			       0, MII_BCM7XXX_TL4_RST_MSK);
	if (ret < 0)
		goto reset_shadow_mode;

reset_shadow_mode:
	/* reset shadow mode 2 */
	ret = FUNC0(phydev, MII_BCM7XXX_TEST, 0,
			       MII_BCM7XXX_SHD_MODE_2);
	if (ret < 0)
		return ret;

	return 0;
}