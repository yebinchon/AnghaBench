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
struct sih_agent {scalar_t__ irq_base; int /*<<< orphan*/  edge_change; } ;
struct irq_data {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 struct sih_agent* FUNC1 (struct irq_data*) ; 
 unsigned int FUNC2 (struct irq_data*) ; 

__attribute__((used)) static int FUNC3(struct irq_data *data, unsigned trigger)
{
	struct sih_agent *agent = FUNC1(data);

	if (trigger & ~(IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
		return -EINVAL;

	if (FUNC2(data) != trigger)
		agent->edge_change |= FUNC0(data->irq - agent->irq_base);

	return 0;
}