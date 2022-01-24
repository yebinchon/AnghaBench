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
struct atmel_isi {int /*<<< orphan*/  irqlock; int /*<<< orphan*/  complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int ISI_CTRL_DIS ; 
 int ISI_CTRL_SRST ; 
 int /*<<< orphan*/  ISI_INTDIS ; 
 int /*<<< orphan*/  ISI_INTMASK ; 
 int ISI_SR_CXFR_DONE ; 
 int ISI_SR_PXFR_DONE ; 
 int /*<<< orphan*/  ISI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_isi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct atmel_isi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_isi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct atmel_isi *isi = dev_id;
	u32 status, mask, pending;
	irqreturn_t ret = IRQ_NONE;

	FUNC5(&isi->irqlock);

	status = FUNC2(isi, ISI_STATUS);
	mask = FUNC2(isi, ISI_INTMASK);
	pending = status & mask;

	if (pending & ISI_CTRL_SRST) {
		FUNC1(&isi->complete);
		FUNC3(isi, ISI_INTDIS, ISI_CTRL_SRST);
		ret = IRQ_HANDLED;
	} else if (pending & ISI_CTRL_DIS) {
		FUNC1(&isi->complete);
		FUNC3(isi, ISI_INTDIS, ISI_CTRL_DIS);
		ret = IRQ_HANDLED;
	} else {
		if (FUNC4(pending & ISI_SR_CXFR_DONE) ||
				FUNC4(pending & ISI_SR_PXFR_DONE))
			ret = FUNC0(isi);
	}

	FUNC6(&isi->irqlock);
	return ret;
}