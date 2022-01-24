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
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 unsigned int TC6393XB_NR_IRQS ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tc6393xb*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct tc6393xb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tc6393xb* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  tc6393xb_chip ; 
 int /*<<< orphan*/  tc6393xb_irq ; 

__attribute__((used)) static void FUNC6(struct platform_device *dev)
{
	struct tc6393xb *tc6393xb = FUNC5(dev);
	unsigned int irq, irq_base;

	irq_base = tc6393xb->irq_base;

	for (irq = irq_base; irq < irq_base + TC6393XB_NR_IRQS; irq++) {
		FUNC2(irq, &tc6393xb_chip, handle_edge_irq);
		FUNC3(irq, tc6393xb);
		FUNC0(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
	}

	FUNC4(tc6393xb->irq, IRQ_TYPE_EDGE_FALLING);
	FUNC1(tc6393xb->irq, tc6393xb_irq,
					 tc6393xb);
}