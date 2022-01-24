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
struct mcr20a_local {int /*<<< orphan*/  irq_msg; int /*<<< orphan*/  spi; int /*<<< orphan*/ * irq_header; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DAR_IRQ_STS1 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct mcr20a_local *lp = data;
	int ret;

	FUNC1(irq);

	lp->irq_header[0] = FUNC0(DAR_IRQ_STS1);
	/* read IRQSTSx */
	ret = FUNC3(lp->spi, &lp->irq_msg);
	if (ret) {
		FUNC2(irq);
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}