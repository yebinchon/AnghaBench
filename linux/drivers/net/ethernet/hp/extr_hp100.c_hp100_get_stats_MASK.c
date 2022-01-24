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
struct net_device_stats {int dummy; } ;
struct net_device {int base_addr; struct net_device_stats stats; } ;
struct hp100_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct hp100_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct net_device_stats *FUNC7(struct net_device *dev)
{
	unsigned long flags;
	int ioaddr = dev->base_addr;
	struct hp100_private *lp = FUNC4(dev);

#ifdef HP100_DEBUG_B
	hp100_outw(0x4215, TRACE);
#endif

	FUNC5(&lp->lock, flags);
	FUNC0();	/* Useful ? Jean II */
	FUNC3(dev);
	FUNC1();
	FUNC6(&lp->lock, flags);
	return &(dev->stats);
}