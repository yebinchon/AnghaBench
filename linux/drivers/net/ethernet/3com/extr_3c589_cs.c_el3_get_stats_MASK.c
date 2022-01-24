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
struct pcmcia_device {int dummy; } ;
struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;
struct el3_private {int /*<<< orphan*/  lock; struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 struct el3_private* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC5(struct net_device *dev)
{
	struct el3_private *lp = FUNC0(dev);
	unsigned long flags;
	struct pcmcia_device *link = lp->p_dev;

	if (FUNC1(link)) {
		FUNC2(&lp->lock, flags);
		FUNC4(dev);
		FUNC3(&lp->lock, flags);
	}
	return &dev->stats;
}