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
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int err;

	/* This Marvell PHY has an errata which requires
	 * that certain registers get written in order
	 * to restart autonegotiation
	 */
	err = FUNC0(phydev);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1d, 0x1f);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1e, 0x200c);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1d, 0x5);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1e, 0);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1e, 0x100);
	if (err < 0)
		return err;

	return FUNC1(phydev);
}