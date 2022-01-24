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
struct cas {int cas_flags; scalar_t__ regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CAS_FLAG_REG_PLUS ; 
 int MAC_RX_CFG_EN ; 
 int MAC_TX_CFG_EN ; 
 int N_RX_COMP_RINGS ; 
 int N_RX_DESC_RINGS ; 
 scalar_t__ REG_MAC_RX_CFG ; 
 scalar_t__ REG_MAC_STATE_MACHINE ; 
 scalar_t__ REG_MAC_TX_CFG ; 
 scalar_t__ REG_MIF_STATE_MACHINE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ REG_PLUS_RX_KICK1 ; 
 scalar_t__ REG_RX_CFG ; 
 scalar_t__ REG_RX_COMP_TAIL ; 
 scalar_t__ REG_RX_KICK ; 
 scalar_t__ REG_TX_CFG ; 
 int RX_CFG_DMA_EN ; 
 int FUNC1 (int) ; 
 int STOP_TRIES ; 
 int TX_CFG_DMA_EN ; 
 int /*<<< orphan*/  FUNC2 (struct cas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC7(struct cas *cp)
{
	int i;
	u32 val;
	int txfailed = 0;

	/* enable dma */
	val = FUNC4(cp->regs + REG_TX_CFG) | TX_CFG_DMA_EN;
	FUNC6(val, cp->regs + REG_TX_CFG);
	val = FUNC4(cp->regs + REG_RX_CFG) | RX_CFG_DMA_EN;
	FUNC6(val, cp->regs + REG_RX_CFG);

	/* enable the mac */
	val = FUNC4(cp->regs + REG_MAC_TX_CFG) | MAC_TX_CFG_EN;
	FUNC6(val, cp->regs + REG_MAC_TX_CFG);
	val = FUNC4(cp->regs + REG_MAC_RX_CFG) | MAC_RX_CFG_EN;
	FUNC6(val, cp->regs + REG_MAC_RX_CFG);

	i = STOP_TRIES;
	while (i-- > 0) {
		val = FUNC4(cp->regs + REG_MAC_TX_CFG);
		if ((val & MAC_TX_CFG_EN))
			break;
		FUNC5(10);
	}
	if (i < 0) txfailed = 1;
	i = STOP_TRIES;
	while (i-- > 0) {
		val = FUNC4(cp->regs + REG_MAC_RX_CFG);
		if ((val & MAC_RX_CFG_EN)) {
			if (txfailed) {
				FUNC3(cp->dev,
					   "enabling mac failed [tx:%08x:%08x]\n",
					   FUNC4(cp->regs + REG_MIF_STATE_MACHINE),
					   FUNC4(cp->regs + REG_MAC_STATE_MACHINE));
			}
			goto enable_rx_done;
		}
		FUNC5(10);
	}
	FUNC3(cp->dev, "enabling mac failed [%s:%08x:%08x]\n",
		   (txfailed ? "tx,rx" : "rx"),
		   FUNC4(cp->regs + REG_MIF_STATE_MACHINE),
		   FUNC4(cp->regs + REG_MAC_STATE_MACHINE));

enable_rx_done:
	FUNC2(cp); /* enable interrupts */
	FUNC6(FUNC1(0) - 4, cp->regs + REG_RX_KICK);
	FUNC6(0, cp->regs + REG_RX_COMP_TAIL);

	if (cp->cas_flags & CAS_FLAG_REG_PLUS) {
		if (N_RX_DESC_RINGS > 1)
			FUNC6(FUNC1(1) - 4,
			       cp->regs + REG_PLUS_RX_KICK1);

		for (i = 1; i < N_RX_COMP_RINGS; i++)
			FUNC6(0, cp->regs + FUNC0(i));
	}
}