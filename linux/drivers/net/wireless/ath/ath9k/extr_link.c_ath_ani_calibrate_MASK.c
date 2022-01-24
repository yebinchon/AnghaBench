#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct timer_list {int dummy; } ;
struct ath_softc {int /*<<< orphan*/  paprd_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  sc_pm_lock; int /*<<< orphan*/  ps_flags; struct ath_hw* sc_ah; } ;
struct TYPE_5__ {unsigned int ani_poll_interval; } ;
struct ath_hw {scalar_t__ opmode; scalar_t__ power_mode; scalar_t__ ani_skip_count; int /*<<< orphan*/  paprd_table_write_done; TYPE_3__* caldata; TYPE_1__ config; int /*<<< orphan*/  rxchainmask; int /*<<< orphan*/  curchan; } ;
struct TYPE_6__ {unsigned int longcal_timer; int caldone; unsigned int shortcal_timer; unsigned int resetcal_timer; unsigned int checkani_timer; int /*<<< orphan*/  timer; } ;
struct ath_common {TYPE_2__ ani; int /*<<< orphan*/  cc_lock; scalar_t__ priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  timer; } ;
struct TYPE_7__ {int /*<<< orphan*/  cal_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 scalar_t__ ATH9K_PM_AWAKE ; 
 scalar_t__ ATH_ANI_MAX_SKIP_COUNT ; 
 unsigned int ATH_AP_SHORT_CALINTERVAL ; 
 unsigned int ATH_LONG_CALINTERVAL ; 
 unsigned int ATH_LONG_CALINTERVAL_INT ; 
 unsigned int ATH_RESTART_CALINTERVAL ; 
 unsigned int ATH_STA_SHORT_CALINTERVAL ; 
 int /*<<< orphan*/  NFCAL_INTF ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  PAPRD_DONE ; 
 int /*<<< orphan*/  PS_WAIT_FOR_ANI ; 
 int /*<<< orphan*/  RESET_TYPE_CALIBRATION ; 
 TYPE_4__ ani ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 struct ath_common* common ; 
 struct ath_common* FUNC10 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC12 (scalar_t__) ; 
 unsigned int FUNC13 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC19(struct timer_list *t)
{
	struct ath_common *common = FUNC10(common, t, ani.timer);
	struct ath_softc *sc = (struct ath_softc *)common->priv;
	struct ath_hw *ah = sc->sc_ah;
	bool longcal = false;
	bool shortcal = false;
	bool aniflag = false;
	unsigned int timestamp = FUNC12(jiffies);
	u32 cal_interval, short_cal_interval, long_cal_interval;
	unsigned long flags;

	if (ah->caldata && FUNC18(NFCAL_INTF, &ah->caldata->cal_flags))
		long_cal_interval = ATH_LONG_CALINTERVAL_INT;
	else
		long_cal_interval = ATH_LONG_CALINTERVAL;

	short_cal_interval = (ah->opmode == NL80211_IFTYPE_AP) ?
		ATH_AP_SHORT_CALINTERVAL : ATH_STA_SHORT_CALINTERVAL;

	/* Only calibrate if awake */
	if (sc->sc_ah->power_mode != ATH9K_PM_AWAKE) {
		if (++ah->ani_skip_count >= ATH_ANI_MAX_SKIP_COUNT) {
			FUNC16(&sc->sc_pm_lock, flags);
			sc->ps_flags |= PS_WAIT_FOR_ANI;
			FUNC17(&sc->sc_pm_lock, flags);
		}
		goto set_timer;
	}
	ah->ani_skip_count = 0;
	FUNC16(&sc->sc_pm_lock, flags);
	sc->ps_flags &= ~PS_WAIT_FOR_ANI;
	FUNC17(&sc->sc_pm_lock, flags);

	FUNC5(sc);

	/* Long calibration runs independently of short calibration. */
	if ((timestamp - common->ani.longcal_timer) >= long_cal_interval) {
		longcal = true;
		common->ani.longcal_timer = timestamp;
	}

	/* Short calibration applies only while caldone is false */
	if (!common->ani.caldone) {
		if ((timestamp - common->ani.shortcal_timer) >= short_cal_interval) {
			shortcal = true;
			common->ani.shortcal_timer = timestamp;
			common->ani.resetcal_timer = timestamp;
		}
	} else {
		if ((timestamp - common->ani.resetcal_timer) >=
		    ATH_RESTART_CALINTERVAL) {
			common->ani.caldone = FUNC3(ah);
			if (common->ani.caldone)
				common->ani.resetcal_timer = timestamp;
		}
	}

	/* Verify whether we must check ANI */
	if ((timestamp - common->ani.checkani_timer) >= ah->config.ani_poll_interval) {
		aniflag = true;
		common->ani.checkani_timer = timestamp;
	}

	/* Call ANI routine if necessary */
	if (aniflag) {
		FUNC16(&common->cc_lock, flags);
		FUNC1(ah, ah->curchan);
		FUNC9(sc);
		FUNC17(&common->cc_lock, flags);
	}

	/* Perform calibration if necessary */
	if (longcal || shortcal) {
		int ret = FUNC2(ah, ah->curchan, ah->rxchainmask,
					     longcal);
		if (ret < 0) {
			common->ani.caldone = 0;
			FUNC6(sc, RESET_TYPE_CALIBRATION);
			return;
		}

		common->ani.caldone = ret;
	}

	FUNC7(common, ANI,
		"Calibration @%lu finished: %s %s %s, caldone: %s\n",
		jiffies,
		longcal ? "long" : "", shortcal ? "short" : "",
		aniflag ? "ani" : "", common->ani.caldone ? "true" : "false");

	FUNC4(sc);

set_timer:
	/*
	* Set timer interval based on previous results.
	* The interval must be the shortest necessary to satisfy ANI,
	* short calibration and long calibration.
	*/
	cal_interval = ATH_LONG_CALINTERVAL;
	cal_interval = FUNC13(cal_interval, (u32)ah->config.ani_poll_interval);
	if (!common->ani.caldone)
		cal_interval = FUNC13(cal_interval, (u32)short_cal_interval);

	FUNC14(&common->ani.timer, jiffies + FUNC15(cal_interval));

	if (FUNC0(ah) && ah->caldata) {
		if (!FUNC18(PAPRD_DONE, &ah->caldata->cal_flags)) {
			FUNC11(sc->hw, &sc->paprd_work);
		} else if (!ah->paprd_table_write_done) {
			FUNC5(sc);
			FUNC8(sc);
			FUNC4(sc);
		}
	}
}