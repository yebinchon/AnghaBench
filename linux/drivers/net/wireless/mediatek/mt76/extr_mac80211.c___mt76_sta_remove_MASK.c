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
struct mt76_wcid {int idx; int /*<<< orphan*/ * aggr; } ;
struct mt76_dev {int /*<<< orphan*/  wcid_mask; TYPE_1__* drv; int /*<<< orphan*/ * wcid; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/ * txq; scalar_t__ drv_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sta_remove ) (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_dev*,struct mt76_wcid*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,struct mt76_wcid*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct mt76_dev *dev, struct ieee80211_vif *vif,
		       struct ieee80211_sta *sta)
{
	struct mt76_wcid *wcid = (struct mt76_wcid *)sta->drv_priv;
	int i, idx = wcid->idx;

	FUNC5(dev->wcid[idx], NULL);
	FUNC7();

	for (i = 0; i < FUNC0(wcid->aggr); i++)
		FUNC1(dev, wcid, i);

	if (dev->drv->sta_remove)
		dev->drv->sta_remove(dev, vif, sta);

	FUNC2(dev, wcid, true);
	for (i = 0; i < FUNC0(sta->txq); i++)
		FUNC3(dev, sta->txq[i]);
	FUNC4(dev->wcid_mask, idx);
}