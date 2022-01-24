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
typedef  int u32 ;
struct mx25_tsadc {int /*<<< orphan*/  domain; int /*<<< orphan*/  regs; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int MX25_TGSR_GCQ_INT ; 
 int MX25_TGSR_TCQ_INT ; 
 int /*<<< orphan*/  MX25_TSC_TGSR ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 struct mx25_tsadc* FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC7(struct irq_desc *desc)
{
	struct mx25_tsadc *tsadc = FUNC4(desc);
	struct irq_chip *chip = FUNC3(desc);
	u32 status;

	FUNC0(chip, desc);

	FUNC6(tsadc->regs, MX25_TSC_TGSR, &status);

	if (status & MX25_TGSR_GCQ_INT)
		FUNC2(FUNC5(tsadc->domain, 1));

	if (status & MX25_TGSR_TCQ_INT)
		FUNC2(FUNC5(tsadc->domain, 0));

	FUNC1(chip, desc);
}