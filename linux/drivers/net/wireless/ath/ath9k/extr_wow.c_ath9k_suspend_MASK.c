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
typedef  int u8 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct cfg80211_wowlan {int dummy; } ;
struct ath_softc {int wow_intr_before_sleep; int /*<<< orphan*/  mutex; int /*<<< orphan*/  intr_tq; int /*<<< orphan*/  irq; int /*<<< orphan*/  sc_pcu_lock; TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath_hw {int imask; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct TYPE_2__ {int nvifs; } ;

/* Variables and functions */
 int AH_WOW_USER_PATTERN_EN ; 
 int ATH9K_INT_BMISS ; 
 int ATH9K_INT_GLOBAL ; 
 int /*<<< orphan*/  ATH_OP_INVALID ; 
 int /*<<< orphan*/  ATH_OP_MULTI_CHANNEL ; 
 int /*<<< orphan*/  ATH_OP_PRIM_STA_VIF ; 
 int /*<<< orphan*/  ATH_OP_WOW_ENABLED ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WOW ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int FUNC11 (struct ath_softc*) ; 
 int FUNC12 (struct ath_softc*,struct cfg80211_wowlan*) ; 
 int FUNC13 (struct ath_softc*,struct cfg80211_wowlan*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_common*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC26(struct ieee80211_hw *hw,
		  struct cfg80211_wowlan *wowlan)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	u8 triggers;
	int ret = 0;

	FUNC1(sc);

	FUNC18(&sc->mutex);

	if (FUNC25(ATH_OP_INVALID, &common->op_flags)) {
		FUNC16(common, "Device not present\n");
		ret = -ENODEV;
		goto fail_wow;
	}

	if (FUNC0(!wowlan)) {
		FUNC16(common, "None of the WoW triggers enabled\n");
		ret = -EINVAL;
		goto fail_wow;
	}

	if (sc->cur_chan->nvifs > 1) {
		FUNC15(common, WOW, "WoW for multivif is not yet supported\n");
		ret = 1;
		goto fail_wow;
	}

	if (FUNC7()) {
		if (FUNC25(ATH_OP_MULTI_CHANNEL, &common->op_flags)) {
			FUNC15(common, WOW,
				"Multi-channel WOW is not supported\n");
			ret = 1;
			goto fail_wow;
		}
	}

	if (!FUNC25(ATH_OP_PRIM_STA_VIF, &common->op_flags)) {
		FUNC15(common, WOW, "None of the STA vifs are associated\n");
		ret = 1;
		goto fail_wow;
	}

	triggers = FUNC13(sc, wowlan);
	if (!triggers) {
		FUNC15(common, WOW, "No valid WoW triggers\n");
		ret = 1;
		goto fail_wow;
	}

	FUNC14(sc);
	FUNC17(sc);

	FUNC9(sc);

	FUNC10(sc);

	/*
	 * Enable wake up on recieving disassoc/deauth
	 * frame by default.
	 */
	ret = FUNC11(sc);
	if (ret) {
		FUNC16(common,
			"Unable to add disassoc/deauth pattern: %d\n", ret);
		goto fail_wow;
	}

	if (triggers & AH_WOW_USER_PATTERN_EN) {
		ret = FUNC12(sc, wowlan);
		if (ret) {
			FUNC16(common,
				"Unable to add user pattern: %d\n", ret);
			goto fail_wow;
		}
	}

	FUNC21(&sc->sc_pcu_lock);
	/*
	 * To avoid false wake, we enable beacon miss interrupt only
	 * when we go to sleep. We save the current interrupt mask
	 * so we can restore it after the system wakes up
	 */
	sc->wow_intr_before_sleep = ah->imask;
	ah->imask &= ~ATH9K_INT_GLOBAL;
	FUNC3(ah);
	ah->imask = ATH9K_INT_BMISS | ATH9K_INT_GLOBAL;
	FUNC5(ah);
	FUNC4(ah);

	FUNC22(&sc->sc_pcu_lock);

	/*
	 * we can now sync irq and kill any running tasklets, since we already
	 * disabled interrupts and not holding a spin lock
	 */
	FUNC23(sc->irq);
	FUNC24(&sc->intr_tq);

	FUNC6(ah, triggers);

	FUNC8(sc);
	FUNC15(common, WOW, "Suspend with WoW triggers: 0x%x\n", triggers);

	FUNC20(ATH_OP_WOW_ENABLED, &common->op_flags);
fail_wow:
	FUNC19(&sc->mutex);
	return ret;
}