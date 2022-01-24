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
struct phy_device {int /*<<< orphan*/  advertising; } ;

/* Variables and functions */
 int EINVAL ; 
 int SPEED_UNKNOWN ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int) ; 

int FUNC2(struct phy_device *phydev)
{
	int min_common_speed = FUNC1(phydev, true);

	if (min_common_speed == SPEED_UNKNOWN)
		return -EINVAL;

	return FUNC0(min_common_speed, phydev->advertising);
}