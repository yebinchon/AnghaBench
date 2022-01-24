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
 int KSZPHY_OMSO_NAND_TREE_ON ; 
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

	if (!(ret & KSZPHY_OMSO_NAND_TREE_ON))
		return 0;

	ret = FUNC1(phydev, MII_KSZPHY_OMSO,
			ret & ~KSZPHY_OMSO_NAND_TREE_ON);
out:
	if (ret)
		FUNC2(phydev, "failed to disable NAND tree mode\n");

	return ret;
}