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
typedef  scalar_t__ u32 ;
struct b43_wldev {scalar_t__ irq_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_GEN_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	u32 old_irq_mask = dev->irq_mask;

	/* update beacon right away or defer to irq */
	FUNC3(dev);
	if (old_irq_mask != dev->irq_mask) {
		/* The handler updated the IRQ mask. */
		FUNC0(!dev->irq_mask);
		if (FUNC1(dev, B43_MMIO_GEN_IRQ_MASK)) {
			FUNC2(dev, B43_MMIO_GEN_IRQ_MASK, dev->irq_mask);
		} else {
			/* Device interrupts are currently disabled. That means
			 * we just ran the hardirq handler and scheduled the
			 * IRQ thread. The thread will write the IRQ mask when
			 * it finished, so there's nothing to do here. Writing
			 * the mask _here_ would incorrectly re-enable IRQs. */
		}
	}
}