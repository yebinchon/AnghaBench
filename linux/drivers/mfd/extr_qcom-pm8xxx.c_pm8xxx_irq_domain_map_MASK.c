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
struct pm_irq_chip {TYPE_1__* pm_irq_data; } ;
struct irq_domain {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  irq_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pm_irq_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(struct pm_irq_chip *chip,
				  struct irq_domain *domain, unsigned int irq,
				  irq_hw_number_t hwirq, unsigned int type)
{
	FUNC0(domain, irq, hwirq, chip->pm_irq_data->irq_chip,
			    chip, handle_level_irq, NULL, NULL);
	FUNC1(irq);
}