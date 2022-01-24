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
typedef  int u8 ;
struct stmpe_variant_info {scalar_t__ id_val; int /*<<< orphan*/  num_irqs; } ;
struct stmpe {int* regs; int* ier; int /*<<< orphan*/  domain; struct stmpe_variant_info* variant; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ STMPE1600_ID ; 
 scalar_t__ STMPE1801_ID ; 
 scalar_t__ STMPE801_ID ; 
 size_t STMPE_IDX_ISR_LSB ; 
 size_t STMPE_IDX_ISR_MSB ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct stmpe*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct stmpe*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct stmpe *stmpe = data;
	struct stmpe_variant_info *variant = stmpe->variant;
	int num = FUNC0(variant->num_irqs, 8);
	u8 israddr;
	u8 isr[3];
	int ret;
	int i;

	if (variant->id_val == STMPE801_ID ||
	    variant->id_val == STMPE1600_ID) {
		int base = FUNC3(stmpe->domain, 0);

		FUNC2(base);
		return IRQ_HANDLED;
	}

	if (variant->id_val == STMPE1801_ID)
		israddr = stmpe->regs[STMPE_IDX_ISR_LSB];
	else
		israddr = stmpe->regs[STMPE_IDX_ISR_MSB];

	ret = FUNC4(stmpe, israddr, num, isr);
	if (ret < 0)
		return IRQ_NONE;

	for (i = 0; i < num; i++) {
		int bank = num - i - 1;
		u8 status = isr[i];
		u8 clear;

		status &= stmpe->ier[bank];
		if (!status)
			continue;

		clear = status;
		while (status) {
			int bit = FUNC1(status);
			int line = bank * 8 + bit;
			int nestedirq = FUNC3(stmpe->domain, line);

			FUNC2(nestedirq);
			status &= ~(1 << bit);
		}

		FUNC5(stmpe, israddr + i, clear);
	}

	return IRQ_HANDLED;
}