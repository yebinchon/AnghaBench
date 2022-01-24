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
struct gemini_ethernet_port {struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ GLOBAL_INTERRUPT_ENABLE_4_REG ; 
 scalar_t__ GLOBAL_INTERRUPT_STATUS_4_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long SWFQ_EMPTY_INT_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct gemini_ethernet*,int) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	unsigned long irqmask = SWFQ_EMPTY_INT_BIT;
	struct gemini_ethernet_port *port = data;
	struct gemini_ethernet *geth;
	unsigned long flags;

	geth = port->geth;
	/* The queue is half empty so refill it */
	FUNC0(geth, true);

	FUNC2(&geth->irq_lock, flags);
	/* ACK queue interrupt */
	FUNC4(irqmask, geth->base + GLOBAL_INTERRUPT_STATUS_4_REG);
	/* Enable queue interrupt again */
	irqmask |= FUNC1(geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
	FUNC4(irqmask, geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
	FUNC3(&geth->irq_lock, flags);

	return IRQ_HANDLED;
}