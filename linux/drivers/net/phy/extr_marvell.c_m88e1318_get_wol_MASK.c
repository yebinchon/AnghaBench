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
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_88E1318S_PHY_WOL_CTRL ; 
 int MII_88E1318S_PHY_WOL_CTRL_MAGIC_PACKET_MATCH_ENABLE ; 
 int /*<<< orphan*/  MII_MARVELL_WOL_PAGE ; 
 int /*<<< orphan*/  WAKE_MAGIC ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct phy_device *phydev,
			     struct ethtool_wolinfo *wol)
{
	int oldpage, ret = 0;

	wol->supported = WAKE_MAGIC;
	wol->wolopts = 0;

	oldpage = FUNC2(phydev, MII_MARVELL_WOL_PAGE);
	if (oldpage < 0)
		goto error;

	ret = FUNC0(phydev, MII_88E1318S_PHY_WOL_CTRL);
	if (ret & MII_88E1318S_PHY_WOL_CTRL_MAGIC_PACKET_MATCH_ENABLE)
		wol->wolopts |= WAKE_MAGIC;

error:
	FUNC1(phydev, oldpage, ret);
}