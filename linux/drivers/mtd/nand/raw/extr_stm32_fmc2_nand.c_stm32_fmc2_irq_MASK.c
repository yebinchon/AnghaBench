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
struct stm32_fmc2_nfc {scalar_t__ irq_state; int /*<<< orphan*/  complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FMC2_IRQ_BCH ; 
 scalar_t__ FMC2_IRQ_SEQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_fmc2_nfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_fmc2_nfc*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct stm32_fmc2_nfc *fmc2 = (struct stm32_fmc2_nfc *)dev_id;

	if (fmc2->irq_state == FMC2_IRQ_SEQ)
		/* Sequencer is used */
		FUNC2(fmc2);
	else if (fmc2->irq_state == FMC2_IRQ_BCH)
		/* BCH is used */
		FUNC1(fmc2);

	FUNC0(&fmc2->complete);

	return IRQ_HANDLED;
}