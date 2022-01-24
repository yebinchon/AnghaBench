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
typedef  int u8 ;
struct emac_sgmii {int /*<<< orphan*/  decode_error_count; scalar_t__ base; } ;
struct emac_adapter {int /*<<< orphan*/  work_thread; struct emac_sgmii phy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DECODE_ERROR_LIMIT ; 
 scalar_t__ EMAC_SGMII_PHY_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SGMII_ISR_MASK ; 
 int SGMII_PHY_INTERRUPT_ERR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct emac_adapter*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct emac_adapter *adpt = data;
	struct emac_sgmii *phy = &adpt->phy;
	u8 status;

	status = FUNC3(phy->base + EMAC_SGMII_PHY_INTERRUPT_STATUS);
	status &= SGMII_ISR_MASK;
	if (!status)
		return IRQ_HANDLED;

	/* If we get a decoding error and CDR is not locked, then try
	 * resetting the internal PHY.  The internal PHY uses an embedded
	 * clock with Clock and Data Recovery (CDR) to recover the
	 * clock and data.
	 */
	if (status & SGMII_PHY_INTERRUPT_ERR) {
		int count;

		/* The SGMII is capable of recovering from some decode
		 * errors automatically.  However, if we get multiple
		 * decode errors in a row, then assume that something
		 * is wrong and reset the interface.
		 */
		count = FUNC0(&phy->decode_error_count);
		if (count == DECODE_ERROR_LIMIT) {
			FUNC4(&adpt->work_thread);
			FUNC1(&phy->decode_error_count, 0);
		}
	} else {
		/* We only care about consecutive decode errors. */
		FUNC1(&phy->decode_error_count, 0);
	}

	if (FUNC2(adpt, status))
		FUNC4(&adpt->work_thread);

	return IRQ_HANDLED;
}