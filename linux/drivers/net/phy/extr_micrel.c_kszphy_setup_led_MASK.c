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
typedef  int u32 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MII_KSZPHY_CTRL_1 129 
#define  MII_KSZPHY_CTRL_2 128 
 int FUNC0 (struct phy_device*,int) ; 
 int FUNC1 (struct phy_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev, u32 reg, int val)
{
	int rc, temp, shift;

	switch (reg) {
	case MII_KSZPHY_CTRL_1:
		shift = 14;
		break;
	case MII_KSZPHY_CTRL_2:
		shift = 4;
		break;
	default:
		return -EINVAL;
	}

	temp = FUNC0(phydev, reg);
	if (temp < 0) {
		rc = temp;
		goto out;
	}

	temp &= ~(3 << shift);
	temp |= val << shift;
	rc = FUNC1(phydev, reg, temp);
out:
	if (rc < 0)
		FUNC2(phydev, "failed to set led mode\n");

	return rc;
}