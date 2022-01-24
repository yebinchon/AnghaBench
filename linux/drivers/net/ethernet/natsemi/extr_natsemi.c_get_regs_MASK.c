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
struct netdev_private {int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  NATSEMI_REGS_VER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,void*) ; 
 struct netdev_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct ethtool_regs *regs, void *buf)
{
	struct netdev_private *np = FUNC1(dev);
	regs->version = NATSEMI_REGS_VER;
	FUNC2(&np->lock);
	FUNC0(dev, buf);
	FUNC3(&np->lock);
}