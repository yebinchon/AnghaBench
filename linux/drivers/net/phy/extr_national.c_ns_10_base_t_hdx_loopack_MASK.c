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
typedef  int u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(struct phy_device *phydev, int disable)
{
	u16 lb_dis = FUNC0(1);

	if (disable)
		FUNC2(phydev, 0x1c0,
			     FUNC1(phydev, 0x1c0) | lb_dis);
	else
		FUNC2(phydev, 0x1c0,
			     FUNC1(phydev, 0x1c0) & ~lb_dis);

	FUNC3("10BASE-T HDX loopback %s\n",
		 (FUNC1(phydev, 0x1c0) & lb_dis) ? "off" : "on");
}