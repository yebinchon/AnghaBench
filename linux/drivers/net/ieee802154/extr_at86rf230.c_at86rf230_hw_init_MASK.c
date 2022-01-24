#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct at86rf230_local {TYPE_2__* spi; TYPE_1__* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {scalar_t__ t_sleep_cycle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int EINVAL ; 
 int IRQ_ACTIVE_HIGH ; 
 int IRQ_ACTIVE_LOW ; 
 int IRQ_TRX_END ; 
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_LEVEL_LOW ; 
 int /*<<< orphan*/  SR_CLKM_CTRL ; 
 int /*<<< orphan*/  SR_CLKM_SHA_SEL ; 
 int /*<<< orphan*/  SR_CSMA_SEED_0 ; 
 int /*<<< orphan*/  SR_CSMA_SEED_1 ; 
 int /*<<< orphan*/  SR_DVDD_OK ; 
 int /*<<< orphan*/  SR_IRQ_MASK ; 
 int /*<<< orphan*/  SR_IRQ_MASK_MODE ; 
 int /*<<< orphan*/  SR_IRQ_POLARITY ; 
 int /*<<< orphan*/  SR_RX_SAFE_MODE ; 
 int /*<<< orphan*/  SR_SLOTTED_OPERATION ; 
 int /*<<< orphan*/  SR_XTAL_TRIM ; 
 int /*<<< orphan*/  STATE_FORCE_TRX_OFF ; 
 int FUNC1 (struct at86rf230_local*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (struct at86rf230_local*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct at86rf230_local*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct at86rf230_local *lp, u8 xtal_trim)
{
	int rc, irq_type, irq_pol = IRQ_ACTIVE_HIGH;
	unsigned int dvdd;
	u8 csma_seed[2];

	rc = FUNC2(lp, STATE_FORCE_TRX_OFF);
	if (rc)
		return rc;

	irq_type = FUNC6(lp->spi->irq);
	if (irq_type == IRQ_TYPE_EDGE_FALLING ||
	    irq_type == IRQ_TYPE_LEVEL_LOW)
		irq_pol = IRQ_ACTIVE_LOW;

	rc = FUNC3(lp, SR_IRQ_POLARITY, irq_pol);
	if (rc)
		return rc;

	rc = FUNC3(lp, SR_RX_SAFE_MODE, 1);
	if (rc)
		return rc;

	rc = FUNC3(lp, SR_IRQ_MASK, IRQ_TRX_END);
	if (rc)
		return rc;

	/* reset values differs in at86rf231 and at86rf233 */
	rc = FUNC3(lp, SR_IRQ_MASK_MODE, 0);
	if (rc)
		return rc;

	FUNC5(csma_seed, FUNC0(csma_seed));
	rc = FUNC3(lp, SR_CSMA_SEED_0, csma_seed[0]);
	if (rc)
		return rc;
	rc = FUNC3(lp, SR_CSMA_SEED_1, csma_seed[1]);
	if (rc)
		return rc;

	/* CLKM changes are applied immediately */
	rc = FUNC3(lp, SR_CLKM_SHA_SEL, 0x00);
	if (rc)
		return rc;

	/* Turn CLKM Off */
	rc = FUNC3(lp, SR_CLKM_CTRL, 0x00);
	if (rc)
		return rc;
	/* Wait the next SLEEP cycle */
	FUNC7(lp->data->t_sleep_cycle,
		     lp->data->t_sleep_cycle + 100);

	/* xtal_trim value is calculated by:
	 * CL = 0.5 * (CX + CTRIM + CPAR)
	 *
	 * whereas:
	 * CL = capacitor of used crystal
	 * CX = connected capacitors at xtal pins
	 * CPAR = in all at86rf2xx datasheets this is a constant value 3 pF,
	 *	  but this is different on each board setup. You need to fine
	 *	  tuning this value via CTRIM.
	 * CTRIM = variable capacitor setting. Resolution is 0.3 pF range is
	 *	   0 pF upto 4.5 pF.
	 *
	 * Examples:
	 * atben transceiver:
	 *
	 * CL = 8 pF
	 * CX = 12 pF
	 * CPAR = 3 pF (We assume the magic constant from datasheet)
	 * CTRIM = 0.9 pF
	 *
	 * (12+0.9+3)/2 = 7.95 which is nearly at 8 pF
	 *
	 * xtal_trim = 0x3
	 *
	 * openlabs transceiver:
	 *
	 * CL = 16 pF
	 * CX = 22 pF
	 * CPAR = 3 pF (We assume the magic constant from datasheet)
	 * CTRIM = 4.5 pF
	 *
	 * (22+4.5+3)/2 = 14.75 which is the nearest value to 16 pF
	 *
	 * xtal_trim = 0xf
	 */
	rc = FUNC3(lp, SR_XTAL_TRIM, xtal_trim);
	if (rc)
		return rc;

	rc = FUNC1(lp, SR_DVDD_OK, &dvdd);
	if (rc)
		return rc;
	if (!dvdd) {
		FUNC4(&lp->spi->dev, "DVDD error\n");
		return -EINVAL;
	}

	/* Force setting slotted operation bit to 0. Sometimes the atben
	 * sets this bit and I don't know why. We set this always force
	 * to zero while probing.
	 */
	return FUNC3(lp, SR_SLOTTED_OPERATION, 0);
}