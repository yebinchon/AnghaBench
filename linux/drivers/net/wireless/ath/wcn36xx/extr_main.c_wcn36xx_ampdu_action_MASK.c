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
typedef  size_t u16 ;
struct wcn36xx_sta {size_t tid; int /*<<< orphan*/  ampdu_lock; int /*<<< orphan*/ * ampdu_state; } ;
struct wcn36xx {int /*<<< orphan*/  conf_mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; struct ieee80211_sta* sta; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;

/* Variables and functions */
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  WCN36XX_AMPDU_NONE ; 
 int /*<<< orphan*/  WCN36XX_AMPDU_OPERATIONAL ; 
 int /*<<< orphan*/  WCN36XX_AMPDU_START ; 
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_vif*,struct wcn36xx_sta*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC10 (struct wcn36xx*,struct ieee80211_sta*,size_t,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wcn36xx*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 struct wcn36xx_sta* FUNC13 (struct ieee80211_sta*) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *hw,
		    struct ieee80211_vif *vif,
		    struct ieee80211_ampdu_params *params)
{
	struct wcn36xx *wcn = hw->priv;
	struct wcn36xx_sta *sta_priv = FUNC13(params->sta);
	struct ieee80211_sta *sta = params->sta;
	enum ieee80211_ampdu_mlme_action action = params->action;
	u16 tid = params->tid;
	u16 *ssn = &params->ssn;

	FUNC7(WCN36XX_DBG_MAC, "mac ampdu action action %d tid %d\n",
		    action, tid);

	FUNC3(&wcn->conf_mutex);

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		sta_priv->tid = tid;
		FUNC10(wcn, sta, tid, ssn, 0,
			FUNC0(vif, sta_priv));
		FUNC9(wcn);
		FUNC12(wcn, FUNC0(vif, sta_priv));
		break;
	case IEEE80211_AMPDU_RX_STOP:
		FUNC11(wcn, tid, FUNC0(vif, sta_priv));
		break;
	case IEEE80211_AMPDU_TX_START:
		FUNC5(&sta_priv->ampdu_lock);
		sta_priv->ampdu_state[tid] = WCN36XX_AMPDU_START;
		FUNC6(&sta_priv->ampdu_lock);

		FUNC1(vif, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		FUNC5(&sta_priv->ampdu_lock);
		sta_priv->ampdu_state[tid] = WCN36XX_AMPDU_OPERATIONAL;
		FUNC6(&sta_priv->ampdu_lock);

		FUNC10(wcn, sta, tid, ssn, 1,
			FUNC0(vif, sta_priv));
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
	case IEEE80211_AMPDU_TX_STOP_CONT:
		FUNC5(&sta_priv->ampdu_lock);
		sta_priv->ampdu_state[tid] = WCN36XX_AMPDU_NONE;
		FUNC6(&sta_priv->ampdu_lock);

		FUNC2(vif, sta->addr, tid);
		break;
	default:
		FUNC8("Unknown AMPDU action\n");
	}

	FUNC4(&wcn->conf_mutex);

	return 0;
}