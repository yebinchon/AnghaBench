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
 int KSZPHY_OMSO_B_CAST_OFF ; 
 int /*<<< orphan*/  MII_KSZPHY_OMSO ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int ret;

	ret = FUNC0(phydev, MII_KSZPHY_OMSO);
	if (ret < 0)
		goto out;

	ret = FUNC1(phydev, MII_KSZPHY_OMSO, ret | KSZPHY_OMSO_B_CAST_OFF);
out:
	if (ret)
		FUNC2(phydev, "failed to disable broadcast address\n");

	return ret;
}