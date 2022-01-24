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
struct net_device {int dummy; } ;
struct cp_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ BasicModeCtrl ; 
 int /*<<< orphan*/  Cfg9346 ; 
 int /*<<< orphan*/  Cfg9346_Lock ; 
 int /*<<< orphan*/  Cfg9346_Unlock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* mii_2_8139_map ; 
 struct cp_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int phy_id, int location,
		       int value)
{
	struct cp_private *cp = FUNC2(dev);

	if (location == 0) {
		FUNC1(Cfg9346, Cfg9346_Unlock);
		FUNC0(BasicModeCtrl, value);
		FUNC1(Cfg9346, Cfg9346_Lock);
	} else if (location < 8 && mii_2_8139_map[location])
		FUNC0(mii_2_8139_map[location], value);
}