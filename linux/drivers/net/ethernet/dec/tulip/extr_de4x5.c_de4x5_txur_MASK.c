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
struct de4x5_private {scalar_t__ chipset; } ;

/* Variables and functions */
 scalar_t__ DC21040 ; 
 scalar_t__ DC21041 ; 
 int /*<<< orphan*/  DE4X5_OMR ; 
 int /*<<< orphan*/  DE4X5_STS ; 
 int OMR_SF ; 
 int OMR_SR ; 
 int OMR_ST ; 
 int OMR_TR ; 
 int STS_TS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC1(dev);
    u_long iobase = dev->base_addr;
    int omr;

    omr = FUNC0(DE4X5_OMR);
    if (!(omr & OMR_SF) || (lp->chipset==DC21041) || (lp->chipset==DC21040)) {
	omr &= ~(OMR_ST|OMR_SR);
	FUNC2(omr, DE4X5_OMR);
	while (FUNC0(DE4X5_STS) & STS_TS);
	if ((omr & OMR_TR) < OMR_TR) {
	    omr += 0x4000;
	} else {
	    omr |= OMR_SF;
	}
	FUNC2(omr | OMR_ST | OMR_SR, DE4X5_OMR);
    }

    return 0;
}