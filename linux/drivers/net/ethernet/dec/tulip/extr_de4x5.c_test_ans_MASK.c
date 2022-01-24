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
typedef  int /*<<< orphan*/  u_long ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {int timeout; } ;
typedef  int s32 ;

/* Variables and functions */
 int ANS_NWOK ; 
 int /*<<< orphan*/  DE4X5_IMR ; 
 int /*<<< orphan*/  DE4X5_SISR ; 
 int /*<<< orphan*/  DE4X5_STS ; 
 int SISR_ANS ; 
 int TIMER_CB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev, s32 irqs, s32 irq_mask, s32 msec)
{
    struct de4x5_private *lp = FUNC1(dev);
    u_long iobase = dev->base_addr;
    s32 sts, ans;

    if (lp->timeout < 0) {
	lp->timeout = msec/100;
	FUNC2(irq_mask, DE4X5_IMR);

	/* clear all pending interrupts */
	sts = FUNC0(DE4X5_STS);
	FUNC2(sts, DE4X5_STS);
    }

    ans = FUNC0(DE4X5_SISR) & SISR_ANS;
    sts = FUNC0(DE4X5_STS) & ~TIMER_CB;

    if (!(sts & irqs) && (ans ^ ANS_NWOK) && --lp->timeout) {
	sts = 100 | TIMER_CB;
    } else {
	lp->timeout = -1;
    }

    return sts;
}