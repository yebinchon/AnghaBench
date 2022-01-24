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
struct ene_device {scalar_t__ hw_revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENEB_IRQ_STATUS ; 
 int ENEB_IRQ_STATUS_IR ; 
 int /*<<< orphan*/  ENE_FW1 ; 
 int ENE_FW1_TXIRQ ; 
 int /*<<< orphan*/  ENE_FW2 ; 
 int ENE_FW2_RXIRQ ; 
 scalar_t__ ENE_HW_C ; 
 int /*<<< orphan*/  ENE_IRQ ; 
 int ENE_IRQ_RX ; 
 int ENE_IRQ_STATUS ; 
 int ENE_IRQ_TX ; 
 int /*<<< orphan*/  FUNC0 (struct ene_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ene_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ene_device *dev)
{
	u8 irq_status;
	u8 fw_flags1, fw_flags2;
	int retval = 0;

	fw_flags2 = FUNC1(dev, ENE_FW2);

	if (dev->hw_revision < ENE_HW_C) {
		irq_status = FUNC1(dev, ENEB_IRQ_STATUS);

		if (!(irq_status & ENEB_IRQ_STATUS_IR))
			return 0;

		FUNC0(dev, ENEB_IRQ_STATUS, ENEB_IRQ_STATUS_IR);
		return ENE_IRQ_RX;
	}

	irq_status = FUNC1(dev, ENE_IRQ);
	if (!(irq_status & ENE_IRQ_STATUS))
		return 0;

	/* original driver does that twice - a workaround ? */
	FUNC2(dev, ENE_IRQ, irq_status & ~ENE_IRQ_STATUS);
	FUNC2(dev, ENE_IRQ, irq_status & ~ENE_IRQ_STATUS);

	/* check RX interrupt */
	if (fw_flags2 & ENE_FW2_RXIRQ) {
		retval |= ENE_IRQ_RX;
		FUNC2(dev, ENE_FW2, fw_flags2 & ~ENE_FW2_RXIRQ);
	}

	/* check TX interrupt */
	fw_flags1 = FUNC1(dev, ENE_FW1);
	if (fw_flags1 & ENE_FW1_TXIRQ) {
		FUNC2(dev, ENE_FW1, fw_flags1 & ~ENE_FW1_TXIRQ);
		retval |= ENE_IRQ_TX;
	}

	return retval;
}