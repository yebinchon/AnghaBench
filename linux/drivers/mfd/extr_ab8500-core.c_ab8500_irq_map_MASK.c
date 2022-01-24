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
struct irq_domain {struct ab8500* host_data; } ;
struct ab8500 {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ab8500_irq_chip ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct ab8500*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *d, unsigned int virq,
				irq_hw_number_t hwirq)
{
	struct ab8500 *ab8500 = d->host_data;

	if (!ab8500)
		return -EINVAL;

	FUNC1(virq, ab8500);
	FUNC0(virq, &ab8500_irq_chip,
				handle_simple_irq);
	FUNC2(virq, 1);
	FUNC3(virq);

	return 0;
}