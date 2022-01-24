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
struct gemini_ethernet_port {struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ GLOBAL_INTERRUPT_ENABLE_4_REG ; 
 scalar_t__ GLOBAL_INTERRUPT_STATUS_4_REG ; 
 int GMAC0_RX_OVERRUN_INT_BIT ; 
 int GMAC1_RX_OVERRUN_INT_BIT ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int SWFQ_EMPTY_INT_BIT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct gemini_ethernet_port *port = data;
	struct gemini_ethernet *geth;
	irqreturn_t ret = IRQ_NONE;
	u32 val, en;

	geth = port->geth;
	FUNC1(&geth->irq_lock);

	val = FUNC0(geth->base + GLOBAL_INTERRUPT_STATUS_4_REG);
	en = FUNC0(geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);

	if (val & en & SWFQ_EMPTY_INT_BIT) {
		/* Disable the queue empty interrupt while we work on
		 * processing the queue. Also disable overrun interrupts
		 * as there is not much we can do about it here.
		 */
		en &= ~(SWFQ_EMPTY_INT_BIT | GMAC0_RX_OVERRUN_INT_BIT
					   | GMAC1_RX_OVERRUN_INT_BIT);
		FUNC3(en, geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
		ret = IRQ_WAKE_THREAD;
	}

	FUNC2(&geth->irq_lock);

	return ret;
}