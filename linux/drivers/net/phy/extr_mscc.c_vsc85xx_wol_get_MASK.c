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
typedef  int u16 ;
struct phy_device {int /*<<< orphan*/  lock; } ;
struct ethtool_wolinfo {int wolopts; int* sopass; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_EXTENDED_2 ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_LOWER_PASSWD ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_MAC_CONTROL ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_MID_PASSWD ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_UPPER_PASSWD ; 
 int SECURE_ON_ENABLE ; 
 int WAKE_MAGICSECURE ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int,int) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct phy_device *phydev,
			    struct ethtool_wolinfo *wol)
{
	int rc;
	u16 reg_val;
	u8  i;
	u16 pwd[3] = {0, 0, 0};
	struct ethtool_wolinfo *wol_conf = wol;

	FUNC2(&phydev->lock);
	rc = FUNC5(phydev, MSCC_PHY_PAGE_EXTENDED_2);
	if (rc < 0)
		goto out_unlock;

	reg_val = FUNC1(phydev, MSCC_PHY_WOL_MAC_CONTROL);
	if (reg_val & SECURE_ON_ENABLE)
		wol_conf->wolopts |= WAKE_MAGICSECURE;
	if (wol_conf->wolopts & WAKE_MAGICSECURE) {
		pwd[0] = FUNC1(phydev, MSCC_PHY_WOL_LOWER_PASSWD);
		pwd[1] = FUNC1(phydev, MSCC_PHY_WOL_MID_PASSWD);
		pwd[2] = FUNC1(phydev, MSCC_PHY_WOL_UPPER_PASSWD);
		for (i = 0; i < FUNC0(pwd); i++) {
			wol_conf->sopass[5 - i * 2] = pwd[i] & 0x00ff;
			wol_conf->sopass[5 - (i * 2 + 1)] = (pwd[i] & 0xff00)
							    >> 8;
		}
	}

out_unlock:
	FUNC4(phydev, rc, rc > 0 ? 0 : rc);
	FUNC3(&phydev->lock);
}