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
typedef  scalar_t__ u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ MDIO_AN_EEE_ADV ; 
 int MDIO_MMD_AN ; 
 int FUNC0 (struct phy_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev, int devnum, u16 regnum,
			    u16 val)
{
	int ret;

	if (devnum == MDIO_MMD_AN && regnum == MDIO_AN_EEE_ADV) {
		FUNC1(phydev, 0xa5d);
		ret = FUNC0(phydev, 0x10, val);
		FUNC1(phydev, 0);
	} else {
		ret = -EOPNOTSUPP;
	}

	return ret;
}