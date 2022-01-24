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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int base_addr; int /*<<< orphan*/ * dev_addr; } ;
struct arcnet_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COM20020_REG_W_XREG ; 
 int /*<<< orphan*/  SUB_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arcnet_local*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct arcnet_local* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *addr)
{
	int ioaddr = dev->base_addr;
	struct arcnet_local *lp = FUNC3(dev);
	struct sockaddr *hwaddr = addr;

	FUNC2(dev->dev_addr, hwaddr->sa_data, 1);
	FUNC1(lp, ioaddr, SUB_NODE);
	FUNC0(dev->dev_addr[0], ioaddr, COM20020_REG_W_XREG);

	return 0;
}