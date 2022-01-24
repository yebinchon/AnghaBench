#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int devices_in_package; } ;
struct phy_device {TYPE_1__ c45_ids; scalar_t__ is_c45; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 

int FUNC3(struct phy_device *phydev)
{
	int ret;

	if (phydev->is_c45 && !(phydev->c45_ids.devices_in_package & FUNC0(0)))
		ret = FUNC1(phydev);
	else
		ret = FUNC2(phydev);

	return ret;
}