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
struct regmap_irq_chip_data {int dummy; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct regmap*,int) ; 
 struct regmap_irq_chip_data* FUNC1 (int) ; 
 int FUNC2 (struct regmap_irq_chip_data*) ; 

int FUNC3(struct regmap *regmap, int virq)
{
	struct regmap_irq_chip_data *d = FUNC1(virq);
	int irq_base = FUNC2(d);

	return FUNC0(regmap, virq - irq_base);
}