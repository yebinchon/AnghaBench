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
struct mt76_txq {TYPE_2__* wcid; } ;
struct TYPE_6__ {int idx; int hw_key_idx; } ;
struct TYPE_5__ {TYPE_2__ wcid; } ;
struct mt7615_vif {int idx; int omac_idx; int wmm_idx; TYPE_1__ sta; scalar_t__ band_idx; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * wcid; } ;
struct mt7615_dev {TYPE_3__ mt76; int /*<<< orphan*/  omac_mask; int /*<<< orphan*/  vif_mask; } ;
struct ieee80211_vif {TYPE_4__* txq; int /*<<< orphan*/  type; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;
struct TYPE_8__ {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int MT7615_MAX_INTERFACES ; 
 int MT7615_MAX_WMM_SETS ; 
 int MT7615_WTBL_RESERVED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt7615_dev*,struct ieee80211_vif*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif)
{
	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
	struct mt7615_dev *dev = hw->priv;
	struct mt76_txq *mtxq;
	int idx, ret = 0;

	FUNC5(&dev->mt76.mutex);

	mvif->idx = FUNC1(~dev->vif_mask) - 1;
	if (mvif->idx >= MT7615_MAX_INTERFACES) {
		ret = -ENOSPC;
		goto out;
	}

	idx = FUNC2(vif->type, dev->omac_mask);
	if (idx < 0) {
		ret = -ENOSPC;
		goto out;
	}
	mvif->omac_idx = idx;

	/* TODO: DBDC support. Use band 0 for now */
	mvif->band_idx = 0;
	mvif->wmm_idx = mvif->idx % MT7615_MAX_WMM_SETS;

	ret = FUNC3(dev, vif, 1);
	if (ret)
		goto out;

	dev->vif_mask |= FUNC0(mvif->idx);
	dev->omac_mask |= FUNC0(mvif->omac_idx);
	idx = MT7615_WTBL_RESERVED - mvif->idx;
	mvif->sta.wcid.idx = idx;
	mvif->sta.wcid.hw_key_idx = -1;

	FUNC7(dev->mt76.wcid[idx], &mvif->sta.wcid);
	mtxq = (struct mt76_txq *)vif->txq->drv_priv;
	mtxq->wcid = &mvif->sta.wcid;
	FUNC4(&dev->mt76, vif->txq);

out:
	FUNC6(&dev->mt76.mutex);

	return ret;
}