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
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int IXGBE_MAX_SECRX_POLL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SECRXCTRL ; 
 int IXGBE_SECRXCTRL_RX_DIS ; 
 int /*<<< orphan*/  IXGBE_SECRXSTAT ; 
 int IXGBE_SECRXSTAT_SECRX_RDY ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

s32 FUNC4(struct ixgbe_hw *hw)
{
#define IXGBE_MAX_SECRX_POLL 40
	int i;
	int secrxreg;

	secrxreg = FUNC0(hw, IXGBE_SECRXCTRL);
	secrxreg |= IXGBE_SECRXCTRL_RX_DIS;
	FUNC1(hw, IXGBE_SECRXCTRL, secrxreg);
	for (i = 0; i < IXGBE_MAX_SECRX_POLL; i++) {
		secrxreg = FUNC0(hw, IXGBE_SECRXSTAT);
		if (secrxreg & IXGBE_SECRXSTAT_SECRX_RDY)
			break;
		else
			/* Use interrupt-safe sleep just in case */
			FUNC3(1000);
	}

	/* For informational purposes only */
	if (i >= IXGBE_MAX_SECRX_POLL)
		FUNC2(hw, "Rx unit being enabled before security path fully disabled. Continuing with init.\n");

	return 0;

}