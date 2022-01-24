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
 int BMCR_ANENABLE ; 
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED1000 ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct phy_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	int err;

	err = FUNC1(phydev, MII_BMCR,
			BMCR_ANENABLE | BMCR_SPEED1000 | BMCR_FULLDPLX);
	if (err)
		return err;

	FUNC3(300, 400);

	err = FUNC2(phydev, 0xf8, 0x08, 0x36);
	if (err)
		return err;

	return FUNC0(phydev);
}