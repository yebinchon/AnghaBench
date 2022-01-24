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
struct max8997_dev {int dummy; } ;
struct irq_domain {struct max8997_dev* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct max8997_dev*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  max8998_irq_chip ; 

__attribute__((used)) static int FUNC4(struct irq_domain *d, unsigned int irq,
					irq_hw_number_t hw)
{
	struct max8997_dev *max8998 = d->host_data;

	FUNC1(irq, max8998);
	FUNC0(irq, &max8998_irq_chip, handle_edge_irq);
	FUNC2(irq, 1);
	FUNC3(irq);

	return 0;
}