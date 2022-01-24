#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcnet32_private {int /*<<< orphan*/  lock; TYPE_1__* a; } ;
struct net_device_stats {int /*<<< orphan*/  rx_missed_errors; } ;
struct net_device {unsigned long base_addr; struct net_device_stats stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* read_csr ) (unsigned long,int) ;} ;

/* Variables and functions */
 struct pcnet32_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 

__attribute__((used)) static struct net_device_stats *FUNC4(struct net_device *dev)
{
	struct pcnet32_private *lp = FUNC0(dev);
	unsigned long ioaddr = dev->base_addr;
	unsigned long flags;

	FUNC1(&lp->lock, flags);
	dev->stats.rx_missed_errors = lp->a->read_csr(ioaddr, 112);
	FUNC2(&lp->lock, flags);

	return &dev->stats;
}