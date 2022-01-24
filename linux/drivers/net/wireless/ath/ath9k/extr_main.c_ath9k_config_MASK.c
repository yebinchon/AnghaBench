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
struct ieee80211_conf {int flags; int /*<<< orphan*/  chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath_softc* priv; } ;
struct ath_softc {int ps_idle; int /*<<< orphan*/  mutex; struct ath_hw* sc_ah; int /*<<< orphan*/  sc_pm_lock; struct ath_chanctx* cur_chan; } ;
struct ath_hw {int is_monitoring; } ;
struct ath_common {int dummy; } ;
struct ath_chanctx {int offchannel; int /*<<< orphan*/  chandef; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_IDLE ; 
 int IEEE80211_CONF_CHANGE_MONITOR ; 
 int IEEE80211_CONF_CHANGE_PS ; 
 int IEEE80211_CONF_IDLE ; 
 int IEEE80211_CONF_MONITOR ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int IEEE80211_CONF_PS ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*,struct ath_chanctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC15(struct ieee80211_hw *hw, u32 changed)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	struct ieee80211_conf *conf = &hw->conf;
	struct ath_chanctx *ctx = sc->cur_chan;

	FUNC5(sc);
	FUNC11(&sc->mutex);

	if (changed & IEEE80211_CONF_CHANGE_IDLE) {
		sc->ps_idle = !!(conf->flags & IEEE80211_CONF_IDLE);
		if (sc->ps_idle) {
			FUNC8(sc);
			FUNC7(sc);
		} else {
			FUNC6(sc);
			/*
			 * The chip needs a reset to properly wake up from
			 * full sleep
			 */
			FUNC9(sc, ctx, &ctx->chandef);
		}
	}

	/*
	 * We just prepare to enable PS. We have to wait until our AP has
	 * ACK'd our null data frame to disable RX otherwise we'll ignore
	 * those ACKs and end up retransmitting the same null data frames.
	 * IEEE80211_CONF_CHANGE_PS is only passed by mac80211 for STA mode.
	 */
	if (changed & IEEE80211_CONF_CHANGE_PS) {
		unsigned long flags;
		FUNC13(&sc->sc_pm_lock, flags);
		if (conf->flags & IEEE80211_CONF_PS)
			FUNC1(sc);
		else
			FUNC0(sc);
		FUNC14(&sc->sc_pm_lock, flags);
	}

	if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
		if (conf->flags & IEEE80211_CONF_MONITOR) {
			FUNC10(common, CONFIG, "Monitor mode is enabled\n");
			sc->sc_ah->is_monitoring = true;
		} else {
			FUNC10(common, CONFIG, "Monitor mode is disabled\n");
			sc->sc_ah->is_monitoring = false;
		}
	}

	if (!FUNC3() && (changed & IEEE80211_CONF_CHANGE_CHANNEL)) {
		ctx->offchannel = !!(conf->flags & IEEE80211_CONF_OFFCHANNEL);
		FUNC9(sc, ctx, &hw->conf.chandef);
	}

	FUNC12(&sc->mutex);
	FUNC4(sc);

	return 0;
}