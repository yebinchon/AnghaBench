#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mt76_wcid {size_t idx; int /*<<< orphan*/  rssi; } ;
struct mt76_txq {struct mt76_wcid* wcid; } ;
struct mt76_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * wcid; TYPE_1__* drv; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {TYPE_2__** txq; scalar_t__ drv_priv; } ;
struct TYPE_5__ {scalar_t__ drv_priv; } ;
struct TYPE_4__ {int (* sta_add ) (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mt76_wcid*) ; 
 int FUNC6 (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ; 

__attribute__((used)) static int
FUNC7(struct mt76_dev *dev, struct ieee80211_vif *vif,
	     struct ieee80211_sta *sta)
{
	struct mt76_wcid *wcid = (struct mt76_wcid *)sta->drv_priv;
	int ret;
	int i;

	FUNC3(&dev->mutex);

	ret = dev->drv->sta_add(dev, vif, sta);
	if (ret)
		goto out;

	for (i = 0; i < FUNC0(sta->txq); i++) {
		struct mt76_txq *mtxq;

		if (!sta->txq[i])
			continue;

		mtxq = (struct mt76_txq *)sta->txq[i]->drv_priv;
		mtxq->wcid = wcid;

		FUNC2(dev, sta->txq[i]);
	}

	FUNC1(&wcid->rssi);
	FUNC5(dev->wcid[wcid->idx], wcid);

out:
	FUNC4(&dev->mutex);

	return ret;
}