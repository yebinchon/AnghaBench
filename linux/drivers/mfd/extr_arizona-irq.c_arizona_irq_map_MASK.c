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
struct irq_domain {struct arizona* host_data; } ;
struct arizona {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  arizona_irq_chip ; 
 int /*<<< orphan*/  arizona_irq_lock_class ; 
 int /*<<< orphan*/  arizona_irq_request_class ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct arizona*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *h, unsigned int virq,
			      irq_hw_number_t hw)
{
	struct arizona *data = h->host_data;

	FUNC1(virq, data);
	FUNC2(virq, &arizona_irq_lock_class,
		&arizona_irq_request_class);
	FUNC0(virq, &arizona_irq_chip, handle_simple_irq);
	FUNC3(virq, 1);
	FUNC4(virq);

	return 0;
}