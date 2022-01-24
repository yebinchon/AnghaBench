#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct mt76_queue {scalar_t__ queued; int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  wcid; } ;
struct mt7603_vif {TYPE_3__ sta; } ;
struct TYPE_13__ {int /*<<< orphan*/  beacon_mask; TYPE_4__* q_tx; scalar_t__ csa_complete; } ;
struct mt7603_dev {int* tail; int* count; int /*<<< orphan*/  beacon_check; TYPE_6__ mt76; int /*<<< orphan*/  q; struct mt7603_dev* dev; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_9__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct beacon_bc_data {int* tail; int* count; int /*<<< orphan*/  beacon_check; TYPE_6__ mt76; int /*<<< orphan*/  q; struct beacon_bc_data* dev; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_12__ {TYPE_1__ conf; } ;
struct TYPE_11__ {struct mt76_queue* q; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 struct ieee80211_tx_info* FUNC3 (struct sk_buff*) ; 
 int MT7603_MAX_INTERFACES ; 
 size_t MT_TXQ_BEACON ; 
 size_t MT_TXQ_CAB ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  MT_WF_ARB_CAB_FLUSH ; 
 int /*<<< orphan*/  MT_WF_ARB_CAB_START ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mt7603_dev*) ; 
 int /*<<< orphan*/  mt7603_add_buffered_bc ; 
 int /*<<< orphan*/  mt7603_update_beacon_iter ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 TYPE_5__* FUNC13 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct mt7603_dev*,struct mt76_queue*) ; 
 int /*<<< orphan*/  FUNC15 (struct mt7603_dev*,size_t,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct mt7603_dev*,size_t,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

void FUNC23(unsigned long arg)
{
	struct mt7603_dev *dev = (struct mt7603_dev *)arg;
	struct mt76_queue *q;
	struct beacon_bc_data data = {};
	struct sk_buff *skb;
	int i, nframes;

	if (FUNC13(dev)->conf.flags & IEEE80211_CONF_OFFCHANNEL)
		return;

	data.dev = dev;
	FUNC9(&data.q);

	q = dev->mt76.q_tx[MT_TXQ_BEACON].q;
	FUNC21(&q->lock);
	FUNC11(FUNC13(dev),
		IEEE80211_IFACE_ITER_RESUME_ALL,
		mt7603_update_beacon_iter, dev);
	FUNC14(dev, q);
	FUNC22(&q->lock);

	/* Flush all previous CAB queue packets */
	FUNC18(dev, MT_WF_ARB_CAB_FLUSH, FUNC2(30, 16) | FUNC1(0));

	FUNC15(dev, MT_TXQ_CAB, false);

	FUNC12(&dev->mt76);
	if (dev->mt76.csa_complete)
		goto out;

	q = dev->mt76.q_tx[MT_TXQ_CAB].q;
	do {
		nframes = FUNC20(&data.q);
		FUNC11(FUNC13(dev),
			IEEE80211_IFACE_ITER_RESUME_ALL,
			mt7603_add_buffered_bc, &data);
	} while (nframes != FUNC20(&data.q) &&
		 FUNC20(&data.q) < 8);

	if (FUNC19(&data.q))
		goto out;

	for (i = 0; i < FUNC0(data.tail); i++) {
		if (!data.tail[i])
			continue;

		FUNC16(data.tail[i], false);
	}

	FUNC21(&q->lock);
	while ((skb = FUNC8(&data.q)) != NULL) {
		struct ieee80211_tx_info *info = FUNC3(skb);
		struct ieee80211_vif *vif = info->control.vif;
		struct mt7603_vif *mvif = (struct mt7603_vif *)vif->drv_priv;

		FUNC17(dev, MT_TXQ_CAB, skb, &mvif->sta.wcid, NULL);
	}
	FUNC14(dev, q);
	FUNC22(&q->lock);

	for (i = 0; i < FUNC0(data.count); i++)
		FUNC18(dev, FUNC4(i),
			data.count[i] << FUNC5(i));

	FUNC18(dev, MT_WF_ARB_CAB_START,
		FUNC7(0) |
		(FUNC6(1) *
		 ((1 << (MT7603_MAX_INTERFACES - 1)) - 1)));

out:
	FUNC15(dev, MT_TXQ_BEACON, false);
	if (dev->mt76.q_tx[MT_TXQ_BEACON].q->queued >
	    FUNC10(dev->mt76.beacon_mask))
		dev->beacon_check++;
}