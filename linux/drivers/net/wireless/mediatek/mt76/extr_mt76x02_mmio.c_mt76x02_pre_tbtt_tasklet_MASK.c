#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct mt76x02_vif {int /*<<< orphan*/  group_wcid; } ;
struct TYPE_11__ {scalar_t__ csa_complete; TYPE_1__* q_tx; } ;
struct mt76x02_dev {TYPE_5__ mt76; } ;
struct mt76_queue {int /*<<< orphan*/  lock; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_9__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {TYPE_3__ control; } ;
struct beacon_bc_data {int /*<<< orphan*/  q; int /*<<< orphan*/ * tail; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_10__ {TYPE_2__ conf; } ;
struct TYPE_7__ {struct mt76_queue* q; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 size_t MT_TXQ_PSD ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_4__* FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,size_t,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,struct beacon_bc_data*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  mt76x02_update_beacon_iter ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(unsigned long arg)
{
	struct mt76x02_dev *dev = (struct mt76x02_dev *)arg;
	struct mt76_queue *q = dev->mt76.q_tx[MT_TXQ_PSD].q;
	struct beacon_bc_data data = {};
	struct sk_buff *skb;
	int i;

	if (FUNC5(dev)->conf.flags & IEEE80211_CONF_OFFCHANNEL)
		return;

	FUNC9(dev);

	FUNC3(FUNC5(dev),
		IEEE80211_IFACE_ITER_RESUME_ALL,
		mt76x02_update_beacon_iter, dev);

	FUNC4(&dev->mt76);

	if (dev->mt76.csa_complete)
		return;

	FUNC8(dev, &data, 8);

	if (!FUNC10(&data.q))
		return;

	for (i = 0; i < FUNC0(data.tail); i++) {
		if (!data.tail[i])
			continue;

		FUNC6(data.tail[i], false);
	}

	FUNC11(&q->lock);
	while ((skb = FUNC2(&data.q)) != NULL) {
		struct ieee80211_tx_info *info = FUNC1(skb);
		struct ieee80211_vif *vif = info->control.vif;
		struct mt76x02_vif *mvif = (struct mt76x02_vif *)vif->drv_priv;

		FUNC7(dev, MT_TXQ_PSD, skb, &mvif->group_wcid,
				  NULL);
	}
	FUNC12(&q->lock);
}