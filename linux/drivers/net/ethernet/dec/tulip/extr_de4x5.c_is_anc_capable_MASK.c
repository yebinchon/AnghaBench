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
typedef  int /*<<< orphan*/  u_long ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {size_t active; int chipset; TYPE_1__* phy; scalar_t__ useMII; int /*<<< orphan*/  useSROM; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; scalar_t__ id; } ;

/* Variables and functions */
 int DC2114x ; 
 int /*<<< orphan*/  DE4X5_MII ; 
 int /*<<< orphan*/  DE4X5_SISR ; 
 int /*<<< orphan*/  MII_SR ; 
 int SISR_LPN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC2(dev);
    u_long iobase = dev->base_addr;

    if (lp->phy[lp->active].id && (!lp->useSROM || lp->useMII)) {
	return FUNC1(MII_SR, lp->phy[lp->active].addr, DE4X5_MII);
    } else if ((lp->chipset & ~0x00ff) == DC2114x) {
	return (FUNC0(DE4X5_SISR) & SISR_LPN) >> 12;
    } else {
	return 0;
    }
}