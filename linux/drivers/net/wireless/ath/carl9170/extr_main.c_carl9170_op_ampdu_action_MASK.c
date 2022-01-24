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
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; struct ieee80211_sta* sta; } ;
struct carl9170_sta_tid {size_t hsn; size_t bsn; size_t snx; size_t tid; int /*<<< orphan*/  state; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  tmp_list; struct ieee80211_vif* vif; struct ieee80211_sta* sta; int /*<<< orphan*/  max; } ;
struct carl9170_sta_info {TYPE_1__* stats; int /*<<< orphan*/ * agg; int /*<<< orphan*/  ampdu_max_len; int /*<<< orphan*/  ht_sta; } ;
struct ar9170 {int /*<<< orphan*/  ampdu_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_ampdu_list_lock; int /*<<< orphan*/  tx_ampdu_list; int /*<<< orphan*/  tx_ampdu_list_len; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_2__ {int clear; int req; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_BAW_SIZE ; 
 int /*<<< orphan*/  CARL9170_TID_STATE_IDLE ; 
 int /*<<< orphan*/  CARL9170_TID_STATE_PROGRESS ; 
 int /*<<< orphan*/  CARL9170_TID_STATE_SHUTDOWN ; 
 int EFAULT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 struct carl9170_sta_tid* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ modparam_noht ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct carl9170_sta_tid*) ; 
 struct carl9170_sta_tid* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_ampdu_params *params)
{
	struct ieee80211_sta *sta = params->sta;
	enum ieee80211_ampdu_mlme_action action = params->action;
	u16 tid = params->tid;
	u16 *ssn = &params->ssn;
	struct ar9170 *ar = hw->priv;
	struct carl9170_sta_info *sta_info = (void *) sta->drv_priv;
	struct carl9170_sta_tid *tid_info;

	if (modparam_noht)
		return -EOPNOTSUPP;

	switch (action) {
	case IEEE80211_AMPDU_TX_START:
		if (!sta_info->ht_sta)
			return -EOPNOTSUPP;

		tid_info = FUNC7(sizeof(struct carl9170_sta_tid),
				   GFP_ATOMIC);
		if (!tid_info)
			return -ENOMEM;

		tid_info->hsn = tid_info->bsn = tid_info->snx = (*ssn);
		tid_info->state = CARL9170_TID_STATE_PROGRESS;
		tid_info->tid = tid;
		tid_info->max = sta_info->ampdu_max_len;
		tid_info->sta = sta;
		tid_info->vif = vif;

		FUNC0(&tid_info->list);
		FUNC0(&tid_info->tmp_list);
		FUNC13(&tid_info->queue);
		FUNC15(&tid_info->lock);

		FUNC14(&ar->tx_ampdu_list_lock);
		ar->tx_ampdu_list_len++;
		FUNC8(&tid_info->list, &ar->tx_ampdu_list);
		FUNC9(sta_info->agg[tid], tid_info);
		FUNC16(&ar->tx_ampdu_list_lock);

		FUNC5(vif, sta->addr, tid);
		break;

	case IEEE80211_AMPDU_TX_STOP_CONT:
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		FUNC11();
		tid_info = FUNC10(sta_info->agg[tid]);
		if (tid_info) {
			FUNC14(&ar->tx_ampdu_list_lock);
			if (tid_info->state > CARL9170_TID_STATE_SHUTDOWN)
				tid_info->state = CARL9170_TID_STATE_SHUTDOWN;
			FUNC16(&ar->tx_ampdu_list_lock);
		}

		FUNC1(sta_info->agg[tid], NULL);
		FUNC12();

		FUNC6(vif, sta->addr, tid);
		FUNC4(ar->hw, &ar->ampdu_work);
		break;

	case IEEE80211_AMPDU_TX_OPERATIONAL:
		FUNC11();
		tid_info = FUNC10(sta_info->agg[tid]);

		sta_info->stats[tid].clear = true;
		sta_info->stats[tid].req = false;

		if (tid_info) {
			FUNC3(tid_info->bitmap, CARL9170_BAW_SIZE);
			tid_info->state = CARL9170_TID_STATE_IDLE;
		}
		FUNC12();

		if (FUNC2(!tid_info))
			return -EFAULT;

		break;

	case IEEE80211_AMPDU_RX_START:
	case IEEE80211_AMPDU_RX_STOP:
		/* Handled by hardware */
		break;

	default:
		return -EOPNOTSUPP;
	}

	return 0;
}