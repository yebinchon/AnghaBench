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
typedef  int /*<<< orphan*/  u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BCM54XX_SHD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MII_BCM54XX_SHD_WRITE ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct phy_device *phydev, u16 shadow,
			 u16 val)
{
	return FUNC2(phydev, MII_BCM54XX_SHD,
			 MII_BCM54XX_SHD_WRITE |
			 FUNC1(shadow) |
			 FUNC0(val));
}