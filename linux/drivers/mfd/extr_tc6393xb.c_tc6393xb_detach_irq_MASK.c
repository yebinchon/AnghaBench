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
struct tc6393xb {unsigned int irq_base; int /*<<< orphan*/  irq; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 unsigned int TC6393XB_NR_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 struct tc6393xb* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static void FUNC5(struct platform_device *dev)
{
	struct tc6393xb *tc6393xb = FUNC4(dev);
	unsigned int irq, irq_base;

	FUNC0(tc6393xb->irq, NULL, NULL);

	irq_base = tc6393xb->irq_base;

	for (irq = irq_base; irq < irq_base + TC6393XB_NR_IRQS; irq++) {
		FUNC3(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
		FUNC1(irq, NULL);
		FUNC2(irq, NULL);
	}
}