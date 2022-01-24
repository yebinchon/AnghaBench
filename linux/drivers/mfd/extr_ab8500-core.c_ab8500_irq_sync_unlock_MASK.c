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
typedef  scalar_t__ u8 ;
struct irq_data {int dummy; } ;
struct ab8500 {int mask_size; scalar_t__* oldmask; scalar_t__* mask; int* irq_reg_offset; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  transfer_ongoing; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_INTERRUPT ; 
 int AB8500_IT_MASK1_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ab8500* FUNC1 (struct irq_data*) ; 
 scalar_t__ FUNC2 (struct ab8500*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ab8500*,int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct ab8500 *ab8500 = FUNC1(data);
	int i;

	for (i = 0; i < ab8500->mask_size; i++) {
		u8 old = ab8500->oldmask[i];
		u8 new = ab8500->mask[i];
		int reg;

		if (new == old)
			continue;

		/*
		 * Interrupt register 12 doesn't exist prior to AB8500 version
		 * 2.0
		 */
		if (ab8500->irq_reg_offset[i] == 11 &&
			FUNC2(ab8500))
			continue;

		if (ab8500->irq_reg_offset[i] < 0)
			continue;

		ab8500->oldmask[i] = new;

		reg = AB8500_IT_MASK1_REG + ab8500->irq_reg_offset[i];
		FUNC4(ab8500, AB8500_INTERRUPT, reg, new);
	}
	FUNC0(&ab8500->transfer_ongoing);
	FUNC3(&ab8500->irq_lock);
}