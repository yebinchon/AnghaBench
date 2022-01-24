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
typedef  size_t u16 ;
struct iwl_mvm_vif {size_t id; int /*<<< orphan*/  uapsd_nonagg_detected_wk; int /*<<< orphan*/  ap_sta_id; } ;
struct iwl_mvm_tcm_mac {int opened_rx_ba_sessions; } ;
struct TYPE_5__ {struct iwl_mvm_tcm_mac* data; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_2__ tcm; TYPE_1__* nvm_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; size_t buf_size; int amsdu; size_t timeout; struct ieee80211_sta* sta; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_6__ {int /*<<< orphan*/  sta_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  sku_cap_11n_enable; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,size_t,int) ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,size_t,size_t,int) ; 
 TYPE_3__* FUNC7 (struct ieee80211_sta*) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_sta*,size_t,size_t,int,size_t,size_t) ; 
 int FUNC9 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,size_t) ; 
 int FUNC10 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,size_t,size_t,int) ; 
 int FUNC11 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,size_t,size_t*) ; 
 int FUNC12 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,size_t) ; 
 struct iwl_mvm_vif* FUNC13 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_ampdu_params *params)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	int ret;
	struct ieee80211_sta *sta = params->sta;
	enum ieee80211_ampdu_mlme_action action = params->action;
	u16 tid = params->tid;
	u16 *ssn = &params->ssn;
	u16 buf_size = params->buf_size;
	bool amsdu = params->amsdu;
	u16 timeout = params->timeout;

	FUNC0(mvm, "A-MPDU action on addr %pM tid %d: action %d\n",
		     sta->addr, tid, action);

	if (!(mvm->nvm_data->sku_cap_11n_enable))
		return -EACCES;

	FUNC14(&mvm->mutex);

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		if (FUNC13(vif)->ap_sta_id ==
				FUNC7(sta)->sta_id) {
			struct iwl_mvm_vif *mvmvif;
			u16 macid = FUNC13(vif)->id;
			struct iwl_mvm_tcm_mac *mdata = &mvm->tcm.data[macid];

			mdata->opened_rx_ba_sessions = true;
			mvmvif = FUNC13(vif);
			FUNC3(&mvmvif->uapsd_nonagg_detected_wk);
		}
		if (!FUNC4()) {
			ret = -EINVAL;
			break;
		}
		ret = FUNC8(mvm, sta, tid, *ssn, true, buf_size,
					 timeout);
		break;
	case IEEE80211_AMPDU_RX_STOP:
		ret = FUNC8(mvm, sta, tid, 0, false, buf_size,
					 timeout);
		break;
	case IEEE80211_AMPDU_TX_START:
		if (!FUNC5()) {
			ret = -EINVAL;
			break;
		}
		ret = FUNC11(mvm, vif, sta, tid, ssn);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
		ret = FUNC12(mvm, vif, sta, tid);
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		ret = FUNC9(mvm, vif, sta, tid);
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		ret = FUNC10(mvm, vif, sta, tid,
					      buf_size, amsdu);
		break;
	default:
		FUNC2(1);
		ret = -EINVAL;
		break;
	}

	if (!ret) {
		u16 rx_ba_ssn = 0;

		if (action == IEEE80211_AMPDU_RX_START)
			rx_ba_ssn = *ssn;

		FUNC6(mvm, vif, sta, tid,
					    rx_ba_ssn, action);
	}
	FUNC15(&mvm->mutex);

	return ret;
}