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
struct velocity_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; int /*<<< orphan*/  mac_regs; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int ISR_PPRXI ; 
 int ISR_PPTXI ; 
 int ISR_PRXI ; 
 int ISR_PTXI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct velocity_info* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct velocity_info*,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_instance)
{
	struct net_device *dev = dev_instance;
	struct velocity_info *vptr = FUNC6(dev);
	u32 isr_status;

	FUNC7(&vptr->lock);
	isr_status = FUNC3(vptr->mac_regs);

	/* Not us ? */
	if (isr_status == 0) {
		FUNC8(&vptr->lock);
		return IRQ_NONE;
	}

	/* Ack the interrupt */
	FUNC4(vptr->mac_regs, isr_status);

	if (FUNC1(FUNC5(&vptr->napi))) {
		FUNC2(vptr->mac_regs);
		FUNC0(&vptr->napi);
	}

	if (isr_status & (~(ISR_PRXI | ISR_PPRXI | ISR_PTXI | ISR_PPTXI)))
		FUNC9(vptr, isr_status);

	FUNC8(&vptr->lock);

	return IRQ_HANDLED;
}