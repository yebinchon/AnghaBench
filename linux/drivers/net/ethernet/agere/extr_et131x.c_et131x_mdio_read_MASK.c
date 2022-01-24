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
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct et131x_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct et131x_adapter*,int,int,int*) ; 
 struct et131x_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct mii_bus *bus, int phy_addr, int reg)
{
	struct net_device *netdev = bus->priv;
	struct et131x_adapter *adapter = FUNC1(netdev);
	u16 value;
	int ret;

	ret = FUNC0(adapter, phy_addr, reg, &value);

	if (ret < 0)
		return ret;

	return value;
}