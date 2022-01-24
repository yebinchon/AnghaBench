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
 int /*<<< orphan*/  DP83811_DEVADDR ; 
 int DP83811_WOL_EN ; 
 int /*<<< orphan*/  MII_DP83811_WOL_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int value;

	value = FUNC1(phydev, DP83811_DEVADDR, MII_DP83811_WOL_CFG);

	if (!(value & DP83811_WOL_EN))
		FUNC0(phydev);

	return 0;
}