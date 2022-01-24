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
struct pcnet32_private {TYPE_1__* a; int /*<<< orphan*/  mii; } ;
struct net_device {unsigned long base_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_bcr ) (unsigned long,int,int) ;} ;

/* Variables and functions */
 struct pcnet32_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int phy_id, int reg_num, int val)
{
	struct pcnet32_private *lp = FUNC0(dev);
	unsigned long ioaddr = dev->base_addr;

	if (!lp->mii)
		return;

	lp->a->write_bcr(ioaddr, 33, ((phy_id & 0x1f) << 5) | (reg_num & 0x1f));
	lp->a->write_bcr(ioaddr, 34, val);
}