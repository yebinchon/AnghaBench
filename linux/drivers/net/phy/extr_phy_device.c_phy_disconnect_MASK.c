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
struct phy_device {int /*<<< orphan*/ * adjust_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 scalar_t__ FUNC2 (struct phy_device*) ; 
 scalar_t__ FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 

void FUNC5(struct phy_device *phydev)
{
	if (FUNC3(phydev))
		FUNC4(phydev);

	if (FUNC2(phydev))
		FUNC1(phydev);

	phydev->adjust_link = NULL;

	FUNC0(phydev);
}