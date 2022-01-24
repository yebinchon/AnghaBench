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
 int ADVERTISED_MPD ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int reg, err;

	/* Advertise as multi-port device, see IEEE802.3-2002 40.5.1.1 */
	/* This is a workaround for an errata in rev < 1.5 devices */
	reg = FUNC1(phydev, MII_CTRL1000);
	reg |= ADVERTISED_MPD;
	err = FUNC2(phydev, MII_CTRL1000, reg);
	if (err)
		return err;

	return FUNC0(phydev);
}