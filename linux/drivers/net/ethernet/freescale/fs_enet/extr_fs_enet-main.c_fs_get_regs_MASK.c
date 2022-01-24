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
struct net_device {int dummy; } ;
struct fs_enet_private {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct ethtool_regs {int len; scalar_t__ version; } ;
struct TYPE_2__ {int (* get_regs ) (struct net_device*,void*,int*) ;} ;

/* Variables and functions */
 struct fs_enet_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct net_device*,void*,int*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct ethtool_regs *regs,
			 void *p)
{
	struct fs_enet_private *fep = FUNC0(dev);
	unsigned long flags;
	int r, len;

	len = regs->len;

	FUNC1(&fep->lock, flags);
	r = (*fep->ops->get_regs)(dev, p, &len);
	FUNC2(&fep->lock, flags);

	if (r == 0)
		regs->version = 0;
}