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
struct ioc3_private {struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int /*<<< orphan*/  eisr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EISR_RXBUFOFLO ; 
 int EISR_RXMEMERR ; 
 int EISR_RXOFLO ; 
 int EISR_RXPARERR ; 
 int EISR_RXTIMERINT ; 
 int EISR_TXBUFUFLO ; 
 int EISR_TXEXPLICIT ; 
 int EISR_TXMEMERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct ioc3_private* FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct ioc3_private *ip = FUNC3(dev_id);
	struct ioc3_ethregs *regs = ip->regs;
	u32 eisr;

	eisr = FUNC4(&regs->eisr);
	FUNC5(eisr, &regs->eisr);
	FUNC4(&regs->eisr);				/* Flush */

	if (eisr & (EISR_RXOFLO | EISR_RXBUFOFLO | EISR_RXMEMERR |
		    EISR_RXPARERR | EISR_TXBUFUFLO | EISR_TXMEMERR))
		FUNC0(dev_id, eisr);
	if (eisr & EISR_RXTIMERINT)
		FUNC1(dev_id);
	if (eisr & EISR_TXEXPLICIT)
		FUNC2(dev_id);

	return IRQ_HANDLED;
}