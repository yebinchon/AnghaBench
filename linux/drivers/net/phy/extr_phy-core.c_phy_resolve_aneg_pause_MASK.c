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
struct phy_device {scalar_t__ duplex; int /*<<< orphan*/  lp_advertising; void* asym_pause; void* pause; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Asym_Pause_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Pause_BIT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct phy_device *phydev)
{
	if (phydev->duplex == DUPLEX_FULL) {
		phydev->pause = FUNC0(ETHTOOL_LINK_MODE_Pause_BIT,
						  phydev->lp_advertising);
		phydev->asym_pause = FUNC0(
			ETHTOOL_LINK_MODE_Asym_Pause_BIT,
			phydev->lp_advertising);
	}
}