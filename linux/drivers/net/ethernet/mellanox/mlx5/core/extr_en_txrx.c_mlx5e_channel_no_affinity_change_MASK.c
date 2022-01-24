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
struct mlx5e_channel {int /*<<< orphan*/  irq_desc; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct cpumask const*) ; 
 struct cpumask* FUNC1 (struct irq_data*) ; 
 struct irq_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 

__attribute__((used)) static inline bool FUNC4(struct mlx5e_channel *c)
{
	int current_cpu = FUNC3();
	const struct cpumask *aff;
	struct irq_data *idata;

	idata = FUNC2(c->irq_desc);
	aff = FUNC1(idata);
	return FUNC0(current_cpu, aff);
}