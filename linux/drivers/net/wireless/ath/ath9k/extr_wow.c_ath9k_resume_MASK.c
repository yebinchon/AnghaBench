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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_pcu_lock; int /*<<< orphan*/  wow_intr_before_sleep; struct ath_hw* sc_ah; } ;
struct ath_hw {int /*<<< orphan*/  imask; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_WOW_ENABLED ; 
 int /*<<< orphan*/  WOW ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct ieee80211_hw *hw)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC0(ah);
	u8 status;

	FUNC11(&sc->mutex);

	FUNC6(sc);

	FUNC13(&sc->sc_pcu_lock);

	FUNC1(ah);
	ah->imask = sc->wow_intr_before_sleep;
	FUNC3(ah);
	FUNC2(ah);

	FUNC14(&sc->sc_pcu_lock);

	status = FUNC4(ah);
	FUNC8(common, WOW, "Resume with WoW status: 0x%x\n", status);

	FUNC9(sc);
	FUNC7(sc);

	FUNC10(ATH_OP_WOW_ENABLED, &common->op_flags);

	FUNC5(sc);
	FUNC12(&sc->mutex);

	return 0;
}