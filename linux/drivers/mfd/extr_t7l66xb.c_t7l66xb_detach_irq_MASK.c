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
struct t7l66xb {unsigned int irq_base; int /*<<< orphan*/  irq; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 unsigned int T7L66XB_NR_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 struct t7l66xb* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static void FUNC4(struct platform_device *dev)
{
	struct t7l66xb *t7l66xb = FUNC3(dev);
	unsigned int irq, irq_base;

	irq_base = t7l66xb->irq_base;

	FUNC0(t7l66xb->irq, NULL, NULL);

	for (irq = irq_base; irq < irq_base + T7L66XB_NR_IRQS; irq++) {
		FUNC1(irq, NULL);
		FUNC2(irq, NULL);
	}
}