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
struct xsdfec_dev {int irq; int uecc_count; int isr_err_count; int stats_updated; int state_updated; int /*<<< orphan*/  waitq; int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  error_data_lock; void* state; int /*<<< orphan*/  cecc_count; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XSDFEC_ALL_ECC_ISR_MBE_MASK ; 
 int /*<<< orphan*/  XSDFEC_ECC_ISR_ADDR ; 
 int XSDFEC_ECC_ISR_MBE_MASK ; 
 int /*<<< orphan*/  XSDFEC_ISR_ADDR ; 
 void* XSDFEC_NEEDS_RESET ; 
 int XSDFEC_PL_INIT_ECC_ISR_MBE_MASK ; 
 void* XSDFEC_PL_RECONFIGURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xsdfec_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xsdfec_dev*,int) ; 
 int FUNC8 (struct xsdfec_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xsdfec_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct xsdfec_dev *xsdfec = dev_id;
	irqreturn_t ret = IRQ_HANDLED;
	u32 ecc_err;
	u32 isr_err;
	u32 uecc_count;
	u32 cecc_count;
	u32 isr_err_count;
	u32 aecc_count;
	u32 tmp;

	FUNC0(xsdfec->irq != irq);

	/* Mask Interrupts */
	FUNC7(xsdfec, false);
	FUNC6(xsdfec, false);
	/* Read ISR */
	ecc_err = FUNC8(xsdfec, XSDFEC_ECC_ISR_ADDR);
	isr_err = FUNC8(xsdfec, XSDFEC_ISR_ADDR);
	/* Clear the interrupts */
	FUNC9(xsdfec, XSDFEC_ECC_ISR_ADDR, ecc_err);
	FUNC9(xsdfec, XSDFEC_ISR_ADDR, isr_err);

	tmp = ecc_err & XSDFEC_ALL_ECC_ISR_MBE_MASK;
	/* Count uncorrectable 2-bit errors */
	uecc_count = FUNC2(tmp);
	/* Count all ECC errors */
	aecc_count = FUNC2(ecc_err);
	/* Number of correctable 1-bit ECC error */
	cecc_count = aecc_count - 2 * uecc_count;
	/* Count ISR errors */
	isr_err_count = FUNC2(isr_err);
	FUNC1(xsdfec->dev, "tmp=%x, uecc=%x, aecc=%x, cecc=%x, isr=%x", tmp,
		uecc_count, aecc_count, cecc_count, isr_err_count);
	FUNC1(xsdfec->dev, "uecc=%x, cecc=%x, isr=%x", xsdfec->uecc_count,
		xsdfec->cecc_count, xsdfec->isr_err_count);

	FUNC3(&xsdfec->error_data_lock, xsdfec->flags);
	/* Add new errors to a 2-bits counter */
	if (uecc_count)
		xsdfec->uecc_count += uecc_count;
	/* Add new errors to a 1-bits counter */
	if (cecc_count)
		xsdfec->cecc_count += cecc_count;
	/* Add new errors to a ISR counter */
	if (isr_err_count)
		xsdfec->isr_err_count += isr_err_count;

	/* Update state/stats flag */
	if (uecc_count) {
		if (ecc_err & XSDFEC_ECC_ISR_MBE_MASK)
			xsdfec->state = XSDFEC_NEEDS_RESET;
		else if (ecc_err & XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
			xsdfec->state = XSDFEC_PL_RECONFIGURE;
		xsdfec->stats_updated = true;
		xsdfec->state_updated = true;
	}

	if (cecc_count)
		xsdfec->stats_updated = true;

	if (isr_err_count) {
		xsdfec->state = XSDFEC_NEEDS_RESET;
		xsdfec->stats_updated = true;
		xsdfec->state_updated = true;
	}

	FUNC4(&xsdfec->error_data_lock, xsdfec->flags);
	FUNC1(xsdfec->dev, "state=%x, stats=%x", xsdfec->state_updated,
		xsdfec->stats_updated);

	/* Enable another polling */
	if (xsdfec->state_updated || xsdfec->stats_updated)
		FUNC5(&xsdfec->waitq);
	else
		ret = IRQ_NONE;

	/* Unmask Interrupts */
	FUNC7(xsdfec, true);
	FUNC6(xsdfec, true);

	return ret;
}