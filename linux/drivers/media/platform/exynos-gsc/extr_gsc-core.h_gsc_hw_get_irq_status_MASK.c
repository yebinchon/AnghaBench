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
typedef  int u32 ;
struct gsc_dev {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ GSC_IRQ ; 
 int GSC_IRQ_DONE ; 
 int GSC_IRQ_OVERRUN ; 
 int GSC_IRQ_STATUS_OR_IRQ ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC1(struct gsc_dev *dev)
{
	u32 cfg = FUNC0(dev->regs + GSC_IRQ);
	if (cfg & GSC_IRQ_STATUS_OR_IRQ)
		return GSC_IRQ_OVERRUN;
	else
		return GSC_IRQ_DONE;

}