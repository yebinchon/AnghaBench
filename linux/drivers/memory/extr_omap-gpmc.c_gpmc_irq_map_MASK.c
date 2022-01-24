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
struct irq_domain {struct gpmc_device* host_data; } ;
struct gpmc_device {int /*<<< orphan*/  irq_chip; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ GPMC_NR_NAND_IRQS ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  IRQ_NOREQUEST ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct gpmc_device*) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int virq,
			irq_hw_number_t hw)
{
	struct gpmc_device *gpmc = d->host_data;

	FUNC2(virq, gpmc);
	if (hw < GPMC_NR_NAND_IRQS) {
		FUNC0(virq, IRQ_NOREQUEST, IRQ_NOAUTOEN);
		FUNC1(virq, &gpmc->irq_chip,
					 handle_simple_irq);
	} else {
		FUNC1(virq, &gpmc->irq_chip,
					 handle_edge_irq);
	}

	return 0;
}