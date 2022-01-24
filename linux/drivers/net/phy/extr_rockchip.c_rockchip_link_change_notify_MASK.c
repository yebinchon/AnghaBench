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
struct phy_device {scalar_t__ state; scalar_t__ speed; } ;

/* Variables and functions */
 scalar_t__ PHY_RUNNING ; 
 scalar_t__ SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,char*,int) ; 
 int FUNC1 (struct phy_device*) ; 

__attribute__((used)) static void FUNC2(struct phy_device *phydev)
{
	/*
	 * If mode switch happens from 10BT to 100BT, all DSP/AFE
	 * registers are set to default values. So any AFE/DSP
	 * registers have to be re-initialized in this case.
	 */
	if (phydev->state == PHY_RUNNING && phydev->speed == SPEED_100) {
		int ret = FUNC1(phydev);

		if (ret)
			FUNC0(phydev, "rockchip_integrated_phy_analog_init err: %d.\n",
				   ret);
	}
}