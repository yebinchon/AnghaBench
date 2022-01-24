#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {int idx; } ;
struct TYPE_6__ {TYPE_5__ wcid; } ;
struct mt7603_vif {TYPE_1__ sta; int /*<<< orphan*/  idx; } ;
struct TYPE_9__ {int beacon_mask; TYPE_3__* q_tx; } ;
struct mt7603_dev {int /*<<< orphan*/  ps_lock; int /*<<< orphan*/  beacon_check; TYPE_4__ mt76; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_8__ {TYPE_2__* q; } ;
struct TYPE_7__ {int hw_idx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT7603_WATCHDOG_TIMEOUT ; 
 int /*<<< orphan*/  MT_DMA_FQCR0 ; 
 int MT_DMA_FQCR0_BUSY ; 
 int /*<<< orphan*/  MT_DMA_FQCR0_DEST_PORT_ID ; 
 int /*<<< orphan*/  MT_DMA_FQCR0_DEST_QUEUE_ID ; 
 int /*<<< orphan*/  MT_DMA_FQCR0_TARGET_QID ; 
 int /*<<< orphan*/  MT_DMA_FQCR0_TARGET_WCID ; 
 int /*<<< orphan*/  MT_TXQ_BEACON ; 
 size_t MT_TXQ_CAB ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*,int /*<<< orphan*/ ,struct sk_buff*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(void *priv, u8 *mac, struct ieee80211_vif *vif)
{
	struct mt7603_dev *dev = (struct mt7603_dev *)priv;
	struct mt7603_vif *mvif = (struct mt7603_vif *)vif->drv_priv;
	struct sk_buff *skb = NULL;

	if (!(dev->mt76.beacon_mask & FUNC0(mvif->idx)))
		return;

	skb = FUNC2(FUNC3(dev), vif);
	if (!skb)
		return;

	FUNC5(dev, MT_TXQ_BEACON, skb, &mvif->sta.wcid, NULL);

	FUNC7(&dev->ps_lock);
	FUNC6(dev, MT_DMA_FQCR0, MT_DMA_FQCR0_BUSY |
		FUNC1(MT_DMA_FQCR0_TARGET_WCID, mvif->sta.wcid.idx) |
		FUNC1(MT_DMA_FQCR0_TARGET_QID,
			   dev->mt76.q_tx[MT_TXQ_CAB].q->hw_idx) |
		FUNC1(MT_DMA_FQCR0_DEST_PORT_ID, 3) |
		FUNC1(MT_DMA_FQCR0_DEST_QUEUE_ID, 8));

	if (!FUNC4(dev, MT_DMA_FQCR0, MT_DMA_FQCR0_BUSY, 0, 5000))
		dev->beacon_check = MT7603_WATCHDOG_TIMEOUT;

	FUNC8(&dev->ps_lock);
}