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
struct ath9k_hw_mci {scalar_t__ bt_state; int /*<<< orphan*/  update_2g5g; scalar_t__ is_2g; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MCI_BT_PRI ; 
 int /*<<< orphan*/  AR_MCI_BT_PRI0 ; 
 int /*<<< orphan*/  AR_MCI_BT_PRI1 ; 
 int /*<<< orphan*/  AR_MCI_BT_PRI2 ; 
 int /*<<< orphan*/  AR_MCI_BT_PRI3 ; 
 int AR_MCI_INTERRUPT_BT_PRI ; 
 int /*<<< orphan*/  AR_MCI_INTERRUPT_EN ; 
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RAW ; 
 int AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE ; 
 int AR_MCI_INTERRUPT_RX_MSG_CONT_RST ; 
 int AR_MCI_INTERRUPT_RX_MSG_LNA_INFO ; 
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RX_MSG_RAW ; 
 int AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING ; 
 int AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING ; 
 int /*<<< orphan*/  MCI ; 
 scalar_t__ FUNC0 (struct ath9k_hw_mci*) ; 
 scalar_t__ MCI_BT_AWAKE ; 
 scalar_t__ MCI_BT_SLEEP ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int) ; 
 scalar_t__ FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 struct ath_common* FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct ath_hw *ah)
{
	struct ath_common *common = FUNC9(ah);
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
	u32 saved_mci_int_en;
	u32 mci_timeout = 150;

	mci->bt_state = MCI_BT_SLEEP;
	saved_mci_int_en = FUNC1(ah, AR_MCI_INTERRUPT_EN);

	FUNC3(ah, AR_MCI_INTERRUPT_EN, 0);
	FUNC3(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
		  FUNC1(ah, AR_MCI_INTERRUPT_RX_MSG_RAW));
	FUNC3(ah, AR_MCI_INTERRUPT_RAW,
		  FUNC1(ah, AR_MCI_INTERRUPT_RAW));

	FUNC4(ah, true);
	FUNC6(ah, true);

	if (!FUNC8(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
				  AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, 500))
		goto clear_redunt;

	mci->bt_state = MCI_BT_AWAKE;

	/*
	 * we don't need to send more remote_reset at this moment.
	 * If BT receive first remote_reset, then BT HW will
	 * be cleaned up and will be able to receive req_wake
	 * and BT HW will respond sys_waking.
	 * In this case, WLAN will receive BT's HW sys_waking.
	 * Otherwise, if BT SW missed initial remote_reset,
	 * that remote_reset will still clean up BT MCI RX,
	 * and the req_wake will wake BT up,
	 * and BT SW will respond this req_wake with a remote_reset and
	 * sys_waking. In this case, WLAN will receive BT's SW
	 * sys_waking. In either case, BT's RX is cleaned up. So we
	 * don't need to reply BT's remote_reset now, if any.
	 * Similarly, if in any case, WLAN can receive BT's sys_waking,
	 * that means WLAN's RX is also fine.
	 */
	FUNC7(ah, true);
	FUNC11(10);

	/*
	 * Set BT priority interrupt value to be 0xff to
	 * avoid having too many BT PRIORITY interrupts.
	 */
	FUNC3(ah, AR_MCI_BT_PRI0, 0xFFFFFFFF);
	FUNC3(ah, AR_MCI_BT_PRI1, 0xFFFFFFFF);
	FUNC3(ah, AR_MCI_BT_PRI2, 0xFFFFFFFF);
	FUNC3(ah, AR_MCI_BT_PRI3, 0xFFFFFFFF);
	FUNC3(ah, AR_MCI_BT_PRI, 0X000000FF);

	/*
	 * A contention reset will be received after send out
	 * sys_waking. Also BT priority interrupt bits will be set.
	 * Clear those bits before the next step.
	 */

	FUNC3(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
		  AR_MCI_INTERRUPT_RX_MSG_CONT_RST);
	FUNC3(ah, AR_MCI_INTERRUPT_RAW, AR_MCI_INTERRUPT_BT_PRI);

	if (mci->is_2g && FUNC0(mci)) {
		FUNC5(ah, true);
		FUNC11(5);
	}

	if (mci->is_2g && !mci->update_2g5g && FUNC0(mci)) {
		if (FUNC8(ah,
					AR_MCI_INTERRUPT_RX_MSG_RAW,
					AR_MCI_INTERRUPT_RX_MSG_LNA_INFO,
					mci_timeout))
			FUNC10(common, MCI,
				"MCI WLAN has control over the LNA & BT obeys it\n");
		else
			FUNC10(common, MCI,
				"MCI BT didn't respond to LNA_TRANS\n");
	}

clear_redunt:
	/* Clear the extra redundant SYS_WAKING from BT */
	if ((mci->bt_state == MCI_BT_AWAKE) &&
	    (FUNC2(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
			    AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING)) &&
	    (FUNC2(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
			    AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING) == 0)) {
		FUNC3(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
			  AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING);
		FUNC3(ah, AR_MCI_INTERRUPT_RAW,
			  AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE);
	}

	FUNC3(ah, AR_MCI_INTERRUPT_EN, saved_mci_int_en);
}