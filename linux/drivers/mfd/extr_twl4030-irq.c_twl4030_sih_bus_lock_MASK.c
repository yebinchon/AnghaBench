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
struct sih_agent {int /*<<< orphan*/  irq_lock; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct sih_agent* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct sih_agent	*agent = FUNC0(data);

	FUNC1(&agent->irq_lock);
}