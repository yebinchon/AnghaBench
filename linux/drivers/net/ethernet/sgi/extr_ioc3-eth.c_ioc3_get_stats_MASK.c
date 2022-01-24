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
struct net_device_stats {int collisions; } ;
struct net_device {struct net_device_stats stats; } ;
struct ioc3_private {struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int /*<<< orphan*/  etcdc; } ;

/* Variables and functions */
 int ETCDC_COLLCNT_MASK ; 
 struct ioc3_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *dev)
{
	struct ioc3_private *ip = FUNC0(dev);
	struct ioc3_ethregs *regs = ip->regs;

	dev->stats.collisions += FUNC1(&regs->etcdc) & ETCDC_COLLCNT_MASK;
	return &dev->stats;
}