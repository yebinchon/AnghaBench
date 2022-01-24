#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/ * frag; } ;
struct ath_softc {int ps_idle; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_pcu_lock; TYPE_3__* cur_chan; TYPE_2__ rx; int /*<<< orphan*/  bcon_tasklet; int /*<<< orphan*/  intr_tq; int /*<<< orphan*/  irq; struct ath_hw* sc_ah; } ;
struct TYPE_4__ {scalar_t__ led_active_high; } ;
struct ath_hw {scalar_t__ led_pin; int /*<<< orphan*/  caldata; scalar_t__ curchan; TYPE_1__ config; int /*<<< orphan*/  imask; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  chandef; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANY ; 
 int /*<<< orphan*/  ATH9K_INT_GLOBAL ; 
 int /*<<< orphan*/  ATH_OP_INVALID ; 
 int /*<<< orphan*/  CONFIG ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*,struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(struct ieee80211_hw *hw)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	bool prev_idle;

	FUNC1(sc);

	FUNC16(&sc->mutex);

	FUNC11(sc);

	FUNC12(sc);

	if (FUNC23(ATH_OP_INVALID, &common->op_flags)) {
		FUNC13(common, ANY, "Device not present\n");
		FUNC17(&sc->mutex);
		return;
	}

	/* Ensure HW is awake when we try to shut it down. */
	FUNC10(sc);

	FUNC19(&sc->sc_pcu_lock);

	/* prevent tasklets to enable interrupts once we disable them */
	ah->imask &= ~ATH9K_INT_GLOBAL;

	/* make sure h/w will not generate any interrupt
	 * before setting the invalid flag. */
	FUNC4(ah);

	FUNC20(&sc->sc_pcu_lock);

	/* we can now sync irq and kill any running tasklets, since we already
	 * disabled interrupts and not holding a spin lock */
	FUNC21(sc->irq);
	FUNC22(&sc->intr_tq);
	FUNC22(&sc->bcon_tasklet);

	prev_idle = sc->ps_idle;
	sc->ps_idle = true;

	FUNC19(&sc->sc_pcu_lock);

	if (ah->led_pin >= 0) {
		FUNC8(ah, ah->led_pin,
				  (ah->config.led_active_high) ? 0 : 1);
		FUNC5(ah, ah->led_pin, NULL);
	}

	FUNC14(sc);

	if (sc->rx.frag) {
		FUNC15(sc->rx.frag);
		sc->rx.frag = NULL;
	}

	if (!ah->curchan)
		ah->curchan = FUNC0(hw, ah,
						    &sc->cur_chan->chandef);

	FUNC7(ah, ah->curchan, ah->caldata, false);

	FUNC18(ATH_OP_INVALID, &common->op_flags);

	FUNC6(ah);

	FUNC3(ah, true);

	FUNC20(&sc->sc_pcu_lock);

	FUNC9(sc);

	sc->ps_idle = prev_idle;

	FUNC17(&sc->mutex);

	FUNC13(common, CONFIG, "Driver halt\n");
}