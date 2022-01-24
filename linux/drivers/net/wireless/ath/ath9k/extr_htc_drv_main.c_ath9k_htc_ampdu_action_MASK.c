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
typedef  size_t u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; struct ieee80211_sta* sta; } ;
struct ath9k_htc_sta {int /*<<< orphan*/ * tid_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ah; TYPE_1__ tx; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;

/* Variables and functions */
 int /*<<< orphan*/  AGGR_OPERATIONAL ; 
 size_t ATH9K_HTC_MAX_TID ; 
 int EINVAL ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int FUNC2 (struct ath9k_htc_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw,
				  struct ieee80211_vif *vif,
				  struct ieee80211_ampdu_params *params)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath9k_htc_sta *ista;
	int ret = 0;
	struct ieee80211_sta *sta = params->sta;
	enum ieee80211_ampdu_mlme_action action = params->action;
	u16 tid = params->tid;

	FUNC7(&priv->mutex);
	FUNC1(priv);

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		break;
	case IEEE80211_AMPDU_RX_STOP:
		break;
	case IEEE80211_AMPDU_TX_START:
		ret = FUNC2(priv, vif, sta, action, tid);
		if (!ret)
			FUNC5(vif, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		FUNC2(priv, vif, sta, action, tid);
		FUNC6(vif, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		if (tid >= ATH9K_HTC_MAX_TID) {
			ret = -EINVAL;
			break;
		}
		ista = (struct ath9k_htc_sta *) sta->drv_priv;
		FUNC9(&priv->tx.tx_lock);
		ista->tid_state[tid] = AGGR_OPERATIONAL;
		FUNC10(&priv->tx.tx_lock);
		break;
	default:
		FUNC4(FUNC3(priv->ah), "Unknown AMPDU action\n");
	}

	FUNC0(priv);
	FUNC8(&priv->mutex);

	return ret;
}