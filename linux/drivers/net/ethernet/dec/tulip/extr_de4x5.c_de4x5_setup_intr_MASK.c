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
struct de4x5_private {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  DE4X5_OMR ; 
 int /*<<< orphan*/  DE4X5_STS ; 
 int /*<<< orphan*/  ENABLE_IRQs ; 
 int OMR_SR ; 
 int /*<<< orphan*/  UNMASK_IRQs ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC1(dev);
    u_long iobase = dev->base_addr;
    s32 imr, sts;

    if (FUNC0(DE4X5_OMR) & OMR_SR) {   /* Only unmask if TX/RX is enabled */
	imr = 0;
	UNMASK_IRQs;
	sts = FUNC0(DE4X5_STS);        /* Reset any pending (stale) interrupts */
	FUNC2(sts, DE4X5_STS);
	ENABLE_IRQs;
    }
}