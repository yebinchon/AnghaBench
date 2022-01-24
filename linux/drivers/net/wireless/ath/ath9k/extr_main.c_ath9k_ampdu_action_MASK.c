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
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ampdu_factor; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ieee80211_ampdu_params {int action; int /*<<< orphan*/  ssn; int /*<<< orphan*/  tid; struct ieee80211_sta* sta; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_ah; } ;
struct ath_node {int dummy; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath_atx_tid {int baw_size; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_SCANNING ; 
 int EBUSY ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int IEEE80211_MIN_AMPDU_BUF ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,char*) ; 
 struct ath_atx_tid* FUNC5 (struct ath_node*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ath_softc*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif,
			      struct ieee80211_ampdu_params *params)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC0(sc->sc_ah);
	bool flush = false;
	int ret = 0;
	struct ieee80211_sta *sta = params->sta;
	struct ath_node *an = (struct ath_node *)sta->drv_priv;
	enum ieee80211_ampdu_mlme_action action = params->action;
	u16 tid = params->tid;
	u16 *ssn = &params->ssn;
	struct ath_atx_tid *atid;

	FUNC10(&sc->mutex);

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		break;
	case IEEE80211_AMPDU_RX_STOP:
		break;
	case IEEE80211_AMPDU_TX_START:
		if (FUNC1()) {
			if (FUNC12(ATH_OP_SCANNING, &common->op_flags)) {
				ret = -EBUSY;
				break;
			}
		}
		FUNC3(sc);
		ret = FUNC6(sc, sta, tid, ssn);
		if (!ret)
			FUNC8(vif, sta->addr, tid);
		FUNC2(sc);
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		flush = true;
		/* fall through */
	case IEEE80211_AMPDU_TX_STOP_CONT:
		FUNC3(sc);
		FUNC7(sc, sta, tid);
		if (!flush)
			FUNC9(vif, sta->addr, tid);
		FUNC2(sc);
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		atid = FUNC5(an, tid);
		atid->baw_size = IEEE80211_MIN_AMPDU_BUF <<
			        sta->ht_cap.ampdu_factor;
		break;
	default:
		FUNC4(FUNC0(sc->sc_ah), "Unknown AMPDU action\n");
	}

	FUNC11(&sc->mutex);

	return ret;
}