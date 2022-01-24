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
struct tps6586x {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/ * mask_reg; int /*<<< orphan*/  dev; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TPS6586X_INT_MASK1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct tps6586x* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct tps6586x *tps6586x = FUNC2(data);
	int i;

	for (i = 0; i < FUNC0(tps6586x->mask_reg); i++) {
		int ret;
		ret = FUNC4(tps6586x->dev,
					    TPS6586X_INT_MASK1 + i,
					    tps6586x->mask_reg[i]);
		FUNC1(ret);
	}

	FUNC3(&tps6586x->irq_lock);
}