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
struct phy_device {int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10000baseR_FEC_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct phy_device *phydev)
{
	FUNC0(ETHTOOL_LINK_MODE_10000baseR_FEC_BIT,
			 phydev->supported);
	return 0;
}