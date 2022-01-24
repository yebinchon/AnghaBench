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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct ath9k_hw_capabilities {int hw_caps; } ;
struct ath_hw {int /*<<< orphan*/  ah_flags; TYPE_2__* eep_ops; TYPE_1__* curchan; struct ath9k_hw_capabilities caps; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {scalar_t__ channelFlags; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_board_values ) (struct ath_hw*,struct ath9k_channel*) ;} ;
struct TYPE_3__ {scalar_t__ channelFlags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FASTCC ; 
 scalar_t__ AR_NUM_QCU ; 
 int ATH9K_HW_CAP_FCC_BAND_SWITCH ; 
 scalar_t__ CHANNEL_5GHZ ; 
 scalar_t__ CHANNEL_HT ; 
 int /*<<< orphan*/  QUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,struct ath9k_channel*,int) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*,struct ath9k_channel*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*,scalar_t__) ; 
 int FUNC8 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static bool FUNC19(struct ath_hw *ah,
				    struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC1(ah);
	struct ath9k_hw_capabilities *pCap = &ah->caps;
	bool band_switch = false, mode_diff = false;
	u8 ini_reloaded = 0;
	u32 qnum;
	int r;

	if (pCap->hw_caps & ATH9K_HW_CAP_FCC_BAND_SWITCH) {
		u32 flags_diff = chan->channelFlags ^ ah->curchan->channelFlags;
		band_switch = !!(flags_diff & CHANNEL_5GHZ);
		mode_diff = !!(flags_diff & ~CHANNEL_HT);
	}

	for (qnum = 0; qnum < AR_NUM_QCU; qnum++) {
		if (FUNC7(ah, qnum)) {
			FUNC15(common, QUEUE,
				"Transmit frames pending on queue %d\n", qnum);
			return false;
		}
	}

	if (!FUNC10(ah)) {
		FUNC16(common, "Could not kill baseband RX\n");
		return false;
	}

	if (band_switch || mode_diff) {
		FUNC6(ah);
		FUNC18(5);

		if (band_switch)
			FUNC5(ah, chan);

		if (FUNC2(ah, chan, &ini_reloaded)) {
			FUNC16(common, "Failed to do fast channel change\n");
			return false;
		}
	}

	FUNC11(ah, chan);

	r = FUNC8(ah, chan);
	if (r) {
		FUNC16(common, "Failed to set channel\n");
		return false;
	}
	FUNC12(ah);
	FUNC0(ah, chan, false);

	FUNC13(ah, chan);
	FUNC14(ah, chan);

	if (band_switch || ini_reloaded)
		ah->eep_ops->set_board_values(ah, chan);

	FUNC3(ah, chan);
	FUNC9(ah);

	if (band_switch || ini_reloaded) {
		ah->ah_flags |= AH_FASTCC;
		FUNC4(ah, chan);
		ah->ah_flags &= ~AH_FASTCC;
	}

	return true;
}