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
struct netdev_private {scalar_t__ base; } ;
struct net_device {int* dev_addr; } ;

/* Variables and functions */
 scalar_t__ StationAddr ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 struct netdev_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	struct netdev_private *np = FUNC1(dev);
	u16 addr16;

	addr16 = (dev->dev_addr[0] | (dev->dev_addr[1] << 8));
	FUNC0(addr16, np->base + StationAddr);
	addr16 = (dev->dev_addr[2] | (dev->dev_addr[3] << 8));
	FUNC0(addr16, np->base + StationAddr+2);
	addr16 = (dev->dev_addr[4] | (dev->dev_addr[5] << 8));
	FUNC0(addr16, np->base + StationAddr+4);
	return 0;
}