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
struct vortex_private {int /*<<< orphan*/  lock; scalar_t__ full_bus_master_rx; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct vortex_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t
FUNC5(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct vortex_private *vp = FUNC2(dev);
	unsigned long flags;
	irqreturn_t ret;

	FUNC3(&vp->lock, flags);

	if (vp->full_bus_master_rx)
		ret = FUNC0(dev->irq, dev);
	else
		ret = FUNC1(dev->irq, dev);

	FUNC4(&vp->lock, flags);

	return ret;
}