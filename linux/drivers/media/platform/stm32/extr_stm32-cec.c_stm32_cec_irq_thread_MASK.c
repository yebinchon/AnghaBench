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
struct stm32_cec {int irq_status; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ALL_RX_IT ; 
 int ALL_TX_IT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct stm32_cec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_cec*,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *arg)
{
	struct stm32_cec *cec = arg;

	if (cec->irq_status & ALL_TX_IT)
		FUNC1(cec, cec->irq_status);

	if (cec->irq_status & ALL_RX_IT)
		FUNC0(cec, cec->irq_status);

	cec->irq_status = 0;

	return IRQ_HANDLED;
}