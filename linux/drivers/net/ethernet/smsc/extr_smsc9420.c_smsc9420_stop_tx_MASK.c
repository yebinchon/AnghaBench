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
struct smsc9420_pdata {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAC_CONTROL ; 
 int DMAC_CONTROL_ST_ ; 
 int /*<<< orphan*/  DMAC_INTR_ENA ; 
 int DMAC_INTR_ENA_TX_ ; 
 int /*<<< orphan*/  DMAC_STATUS ; 
 int DMAC_STS_TS_ ; 
 int DMAC_STS_TXPS_ ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_TXEN_ ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC0 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc9420_pdata*) ; 
 int FUNC2 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct smsc9420_pdata *pd)
{
	u32 dmac_control, mac_cr, dma_intr_ena;
	int timeout = 1000;

	/* disable TX DMAC */
	dmac_control = FUNC2(pd, DMAC_CONTROL);
	dmac_control &= (~DMAC_CONTROL_ST_);
	FUNC3(pd, DMAC_CONTROL, dmac_control);

	/* Wait max 10ms for transmit process to stop */
	while (--timeout) {
		if (FUNC2(pd, DMAC_STATUS) & DMAC_STS_TS_)
			break;
		FUNC4(10);
	}

	if (!timeout)
		FUNC0(pd, ifdown, pd->dev, "TX DMAC failed to stop\n");

	/* ACK Tx DMAC stop bit */
	FUNC3(pd, DMAC_STATUS, DMAC_STS_TXPS_);

	/* mask TX DMAC interrupts */
	dma_intr_ena = FUNC2(pd, DMAC_INTR_ENA);
	dma_intr_ena &= ~(DMAC_INTR_ENA_TX_);
	FUNC3(pd, DMAC_INTR_ENA, dma_intr_ena);
	FUNC1(pd);

	/* stop MAC TX */
	mac_cr = FUNC2(pd, MAC_CR) & (~MAC_CR_TXEN_);
	FUNC3(pd, MAC_CR, mac_cr);
	FUNC1(pd);
}