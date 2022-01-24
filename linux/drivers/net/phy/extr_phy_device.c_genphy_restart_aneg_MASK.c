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
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int /*<<< orphan*/  BMCR_ISOLATE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct phy_device *phydev)
{
	/* Don't isolate the PHY if we're negotiating */
	return FUNC0(phydev, MII_BMCR, BMCR_ISOLATE,
			  BMCR_ANENABLE | BMCR_ANRESTART);
}