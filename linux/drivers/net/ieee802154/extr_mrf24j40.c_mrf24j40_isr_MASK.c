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
struct mrf24j40 {int /*<<< orphan*/  irq_msg; int /*<<< orphan*/  spi; scalar_t__* irq_buf; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_INTSTAT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct mrf24j40 *devrec = data;
	int ret;

	FUNC1(irq);

	devrec->irq_buf[0] = FUNC0(REG_INTSTAT);
	devrec->irq_buf[1] = 0;

	/* Read the interrupt status */
	ret = FUNC3(devrec->spi, &devrec->irq_msg);
	if (ret) {
		FUNC2(irq);
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}