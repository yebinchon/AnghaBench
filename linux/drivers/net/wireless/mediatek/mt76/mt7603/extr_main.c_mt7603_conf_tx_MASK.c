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
typedef  size_t u32 ;
typedef  size_t u16 ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_2__* q_tx; } ;
struct mt7603_dev {TYPE_3__ mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {size_t cw_min; size_t cw_max; size_t txop; size_t aifs; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;
struct TYPE_5__ {TYPE_1__* q; } ;
struct TYPE_4__ {size_t hw_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_WMM_AIFSN ; 
 size_t MT_WMM_AIFSN_MASK ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t MT_WMM_CWMAX_MASK ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  MT_WMM_CWMIN ; 
 size_t MT_WMM_CWMIN_MASK ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 size_t MT_WMM_TXOP_MASK ; 
 size_t FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7603_dev*) ; 
 size_t FUNC8 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7603_dev*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u16 queue,
	       const struct ieee80211_tx_queue_params *params)
{
	struct mt7603_dev *dev = hw->priv;
	u16 cw_min = (1 << 5) - 1;
	u16 cw_max = (1 << 10) - 1;
	u32 val;

	queue = dev->mt76.q_tx[queue].q->hw_idx;

	if (params->cw_min)
		cw_min = params->cw_min;
	if (params->cw_max)
		cw_max = params->cw_max;

	FUNC10(&dev->mt76.mutex);
	FUNC7(dev);

	val = FUNC8(dev, FUNC4(queue));
	val &= ~(MT_WMM_TXOP_MASK << FUNC5(queue));
	val |= params->txop << FUNC5(queue);
	FUNC9(dev, FUNC4(queue), val);

	val = FUNC8(dev, MT_WMM_AIFSN);
	val &= ~(MT_WMM_AIFSN_MASK << FUNC0(queue));
	val |= params->aifs << FUNC0(queue);
	FUNC9(dev, MT_WMM_AIFSN, val);

	val = FUNC8(dev, MT_WMM_CWMIN);
	val &= ~(MT_WMM_CWMIN_MASK << FUNC3(queue));
	val |= cw_min << FUNC3(queue);
	FUNC9(dev, MT_WMM_CWMIN, val);

	val = FUNC8(dev, FUNC1(queue));
	val &= ~(MT_WMM_CWMAX_MASK << FUNC2(queue));
	val |= cw_max << FUNC2(queue);
	FUNC9(dev, FUNC1(queue), val);

	FUNC6(dev);
	FUNC11(&dev->mt76.mutex);

	return 0;
}