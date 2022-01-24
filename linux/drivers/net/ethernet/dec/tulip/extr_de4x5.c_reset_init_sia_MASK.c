#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_4__ {int csr15; int csr14; int csr13; int gepc; int gep; } ;
struct de4x5_private {int ibn; size_t active; TYPE_2__ cache; TYPE_1__* phy; scalar_t__ useSROM; } ;
typedef  int s32 ;
struct TYPE_3__ {int /*<<< orphan*/  gep; int /*<<< orphan*/  rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE4X5_SICR ; 
 int /*<<< orphan*/  DE4X5_SIGR ; 
 int /*<<< orphan*/  DE4X5_STRR ; 
 int /*<<< orphan*/  RESET_SIA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct net_device *dev, s32 csr13, s32 csr14, s32 csr15)
{
    struct de4x5_private *lp = FUNC1(dev);
    u_long iobase = dev->base_addr;

    RESET_SIA;
    if (lp->useSROM) {
	if (lp->ibn == 3) {
	    FUNC3(dev, lp->phy[lp->active].rst);
	    FUNC3(dev, lp->phy[lp->active].gep);
	    FUNC2(1, DE4X5_SICR);
	    return;
	} else {
	    csr15 = lp->cache.csr15;
	    csr14 = lp->cache.csr14;
	    csr13 = lp->cache.csr13;
	    FUNC2(csr15 | lp->cache.gepc, DE4X5_SIGR);
	    FUNC2(csr15 | lp->cache.gep, DE4X5_SIGR);
	}
    } else {
	FUNC2(csr15, DE4X5_SIGR);
    }
    FUNC2(csr14, DE4X5_STRR);
    FUNC2(csr13, DE4X5_SICR);

    FUNC0(10);
}