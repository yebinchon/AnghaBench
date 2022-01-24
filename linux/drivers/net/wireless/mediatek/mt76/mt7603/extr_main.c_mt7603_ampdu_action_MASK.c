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
typedef  int u8 ;
typedef  size_t u16 ;
struct mt76_txq {int aggr; int send_bar; int /*<<< orphan*/  agg_ssn; } ;
struct TYPE_3__ {int /*<<< orphan*/  idx; } ;
struct mt7603_sta {TYPE_1__ wcid; } ;
struct mt7603_dev {int /*<<< orphan*/  mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; struct ieee80211_txq** txq; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; int buf_size; struct ieee80211_sta* sta; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;

/* Variables and functions */
 int EINVAL ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 

__attribute__((used)) static int
FUNC7(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		    struct ieee80211_ampdu_params *params)
{
	enum ieee80211_ampdu_mlme_action action = params->action;
	struct mt7603_dev *dev = hw->priv;
	struct ieee80211_sta *sta = params->sta;
	struct ieee80211_txq *txq = sta->txq[params->tid];
	struct mt7603_sta *msta = (struct mt7603_sta *)sta->drv_priv;
	u16 tid = params->tid;
	u16 ssn = params->ssn;
	u8 ba_size = params->buf_size;
	struct mt76_txq *mtxq;

	if (!txq)
		return -EINVAL;

	mtxq = (struct mt76_txq *)txq->drv_priv;

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		FUNC5(&dev->mt76, &msta->wcid, tid, ssn,
				   params->buf_size);
		FUNC3(dev, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_RX_STOP:
		FUNC6(&dev->mt76, &msta->wcid, tid);
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		mtxq->aggr = true;
		mtxq->send_bar = false;
		FUNC4(dev, msta->wcid.idx, tid, ba_size);
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		mtxq->aggr = false;
		FUNC4(dev, msta->wcid.idx, tid, -1);
		break;
	case IEEE80211_AMPDU_TX_START:
		mtxq->agg_ssn = FUNC0(ssn);
		FUNC1(vif, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
		mtxq->aggr = false;
		FUNC4(dev, msta->wcid.idx, tid, -1);
		FUNC2(vif, sta->addr, tid);
		break;
	}

	return 0;
}