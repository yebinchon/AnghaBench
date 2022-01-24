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
struct cp_private {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__* mii_2_8139_map ; 
 struct cp_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int phy_id, int location)
{
	struct cp_private *cp = FUNC0(dev);

	return location < 8 && mii_2_8139_map[location] ?
	       FUNC1(cp->regs + mii_2_8139_map[location]) : 0;
}