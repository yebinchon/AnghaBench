#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int wow_event_mask; int wow_event_mask2; } ;
struct ath_hw {TYPE_1__ wow; scalar_t__ is_pciexpress; } ;

/* Variables and functions */
 int AH_WOW_BEACON_MISS ; 
 int AH_WOW_LINK_CHANGE ; 
 int AH_WOW_MAGIC_PATTERN_EN ; 
 int AH_WOW_USER_PATTERN_EN ; 
 int AR_DC_TSF2_ENABLE ; 
 int /*<<< orphan*/  AR_DIRECT_CONNECT ; 
 int /*<<< orphan*/  AR_MAC_PCU_WOW4 ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL ; 
 int /*<<< orphan*/  AR_PMCTRL_PWR_STATE_D1D3 ; 
 int /*<<< orphan*/  AR_PMCTRL_WOW_PME_CLR ; 
 int /*<<< orphan*/  AR_RSSI_THR ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (int) ; 
 int AR_WOW_BEACON_FAIL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int AR_WOW_KEEP_ALIVE_FAIL ; 
 int AR_WOW_MAGIC_PAT_FOUND ; 
 int /*<<< orphan*/  AR_WOW_PATTERN ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  INIT_RSSI_THR ; 
 int FUNC9 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*) ; 

u32 FUNC14(struct ath_hw *ah)
{
	u32 wow_status = 0;
	u32 val = 0, rval;

	/*
	 * Read the WoW status register to know
	 * the wakeup reason.
	 */
	rval = FUNC9(ah, AR_WOW_PATTERN);
	val = FUNC7(rval);

	/*
	 * Mask only the WoW events that we have enabled. Sometimes
	 * we have spurious WoW events from the AR_WOW_PATTERN
	 * register. This mask will clean it up.
	 */
	val &= ah->wow.wow_event_mask;

	if (val) {
		if (val & AR_WOW_MAGIC_PAT_FOUND)
			wow_status |= AH_WOW_MAGIC_PATTERN_EN;
		if (FUNC6(val))
			wow_status |= AH_WOW_USER_PATTERN_EN;
		if (val & AR_WOW_KEEP_ALIVE_FAIL)
			wow_status |= AH_WOW_LINK_CHANGE;
		if (val & AR_WOW_BEACON_FAIL)
			wow_status |= AH_WOW_BEACON_MISS;
	}

	rval = FUNC9(ah, AR_MAC_PCU_WOW4);
	val = FUNC8(rval);
	val &= ah->wow.wow_event_mask2;

	if (val) {
		if (FUNC3(val))
			wow_status |= AH_WOW_USER_PATTERN_EN;
	}

	/*
	 * set and clear WOW_PME_CLEAR registers for the chip to
	 * generate next wow signal.
	 * disable D3 before accessing other registers ?
	 */

	/* do we need to check the bit value 0x01000000 (7-10) ?? */
	FUNC10(ah, AR_PCIE_PM_CTRL, AR_PMCTRL_WOW_PME_CLR,
		AR_PMCTRL_PWR_STATE_D1D3);

	/*
	 * Clear all events.
	 */
	FUNC11(ah, AR_WOW_PATTERN,
		  FUNC4(FUNC9(ah, AR_WOW_PATTERN)));
	FUNC11(ah, AR_MAC_PCU_WOW4,
		  FUNC5(FUNC9(ah, AR_MAC_PCU_WOW4)));

	/*
	 * restore the beacon threshold to init value
	 */
	FUNC11(ah, AR_RSSI_THR, INIT_RSSI_THR);

	/*
	 * Restore the way the PCI-E reset, Power-On-Reset, external
	 * PCIE_POR_SHORT pins are tied to its original value.
	 * Previously just before WoW sleep, we untie the PCI-E
	 * reset to our Chip's Power On Reset so that any PCI-E
	 * reset from the bus will not reset our chip
	 */
	if (ah->is_pciexpress)
		FUNC12(ah, false);

	if (FUNC0(ah) || FUNC2(ah) || FUNC1(ah)) {
		u32 dc = FUNC9(ah, AR_DIRECT_CONNECT);

		if (!(dc & AR_DC_TSF2_ENABLE))
			FUNC13(ah);
	}

	ah->wow.wow_event_mask = 0;
	ah->wow.wow_event_mask2 = 0;

	return wow_status;
}