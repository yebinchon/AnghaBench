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
 int /*<<< orphan*/  RTL821x_PAGE_SELECT ; 
 int RTL_SUPPORTS_2500FULL ; 
 int FUNC0 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC2(struct phy_device *phydev)
{
	int val;

	FUNC1(phydev, RTL821x_PAGE_SELECT, 0xa61);
	val = FUNC0(phydev, 0x13);
	FUNC1(phydev, RTL821x_PAGE_SELECT, 0);

	return val >= 0 && val & RTL_SUPPORTS_2500FULL;
}