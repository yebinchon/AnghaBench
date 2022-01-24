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
struct cas {scalar_t__ regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ REG_MAC_RX_RESET ; 
 scalar_t__ REG_MAC_STATE_MACHINE ; 
 scalar_t__ REG_MAC_TX_RESET ; 
 int STOP_TRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct cas *cp)
{
	int i;

	/* do both TX and RX reset */
	FUNC3(0x1, cp->regs + REG_MAC_TX_RESET);
	FUNC3(0x1, cp->regs + REG_MAC_RX_RESET);

	/* wait for TX */
	i = STOP_TRIES;
	while (i-- > 0) {
		if (FUNC1(cp->regs + REG_MAC_TX_RESET) == 0)
			break;
		FUNC2(10);
	}

	/* wait for RX */
	i = STOP_TRIES;
	while (i-- > 0) {
		if (FUNC1(cp->regs + REG_MAC_RX_RESET) == 0)
			break;
		FUNC2(10);
	}

	if (FUNC1(cp->regs + REG_MAC_TX_RESET) |
	    FUNC1(cp->regs + REG_MAC_RX_RESET))
		FUNC0(cp->dev, "mac tx[%d]/rx[%d] reset failed [%08x]\n",
			   FUNC1(cp->regs + REG_MAC_TX_RESET),
			   FUNC1(cp->regs + REG_MAC_RX_RESET),
			   FUNC1(cp->regs + REG_MAC_STATE_MACHINE));
}