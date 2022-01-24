#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct TYPE_3__ {int /*<<< orphan*/  idx; } ;
struct mt76x02_sta {TYPE_1__ wcid; } ;
struct mt76x02_dev {int /*<<< orphan*/  mt76; } ;
struct mt76_txq {int aggr; int send_bar; int /*<<< orphan*/  agg_ssn; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; struct ieee80211_txq** txq; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; int /*<<< orphan*/  buf_size; struct ieee80211_sta* sta; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			 struct ieee80211_ampdu_params *params)
{
	enum ieee80211_ampdu_mlme_action action = params->action;
	struct ieee80211_sta *sta = params->sta;
	struct mt76x02_dev *dev = hw->priv;
	struct mt76x02_sta *msta = (struct mt76x02_sta *)sta->drv_priv;
	struct ieee80211_txq *txq = sta->txq[params->tid];
	u16 tid = params->tid;
	u16 ssn = params->ssn;
	struct mt76_txq *mtxq;

	if (!txq)
		return -EINVAL;

	mtxq = (struct mt76_txq *)txq->drv_priv;

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		FUNC7(&dev->mt76, &msta->wcid, tid,
				   ssn, params->buf_size);
		FUNC9(dev, FUNC2(msta->wcid.idx) + 4, FUNC0(16 + tid));
		break;
	case IEEE80211_AMPDU_RX_STOP:
		FUNC8(&dev->mt76, &msta->wcid, tid);
		FUNC6(dev, FUNC2(msta->wcid.idx) + 4,
			   FUNC0(16 + tid));
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		mtxq->aggr = true;
		mtxq->send_bar = false;
		FUNC3(vif, sta->addr, tid, mtxq->agg_ssn);
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		mtxq->aggr = false;
		break;
	case IEEE80211_AMPDU_TX_START:
		mtxq->agg_ssn = FUNC1(ssn);
		FUNC4(vif, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
		mtxq->aggr = false;
		FUNC5(vif, sta->addr, tid);
		break;
	}

	return 0;
}