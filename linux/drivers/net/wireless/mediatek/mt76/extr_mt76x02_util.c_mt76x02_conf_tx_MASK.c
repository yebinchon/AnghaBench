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
typedef  int u8 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct TYPE_6__ {TYPE_2__* q_tx; } ;
struct mt76x02_dev {TYPE_3__ mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int aifs; scalar_t__ cw_max; scalar_t__ cw_min; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;
struct TYPE_5__ {TYPE_1__* q; } ;
struct TYPE_4__ {int hw_idx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT_EDCA_CFG_AIFSN ; 
 int /*<<< orphan*/  MT_EDCA_CFG_CWMAX ; 
 int /*<<< orphan*/  MT_EDCA_CFG_CWMIN ; 
 int /*<<< orphan*/  MT_EDCA_CFG_TXOP ; 
 int /*<<< orphan*/  MT_WMM_AIFSN ; 
 int MT_WMM_AIFSN_MASK ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  MT_WMM_CWMAX ; 
 int MT_WMM_CWMAX_MASK ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  MT_WMM_CWMIN ; 
 int MT_WMM_CWMIN_MASK ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int MT_WMM_TXOP_MASK ; 
 int FUNC6 (int) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		    u16 queue, const struct ieee80211_tx_queue_params *params)
{
	struct mt76x02_dev *dev = hw->priv;
	u8 cw_min = 5, cw_max = 10, qid;
	u32 val;

	qid = dev->mt76.q_tx[queue].q->hw_idx;

	if (params->cw_min)
		cw_min = FUNC7(params->cw_min);
	if (params->cw_max)
		cw_max = FUNC7(params->cw_max);

	val = FUNC0(MT_EDCA_CFG_TXOP, params->txop) |
	      FUNC0(MT_EDCA_CFG_AIFSN, params->aifs) |
	      FUNC0(MT_EDCA_CFG_CWMIN, cw_min) |
	      FUNC0(MT_EDCA_CFG_CWMAX, cw_max);
	FUNC9(dev, FUNC1(qid), val);

	val = FUNC8(dev, FUNC5(qid));
	val &= ~(MT_WMM_TXOP_MASK << FUNC6(qid));
	val |= params->txop << FUNC6(qid);
	FUNC9(dev, FUNC5(qid), val);

	val = FUNC8(dev, MT_WMM_AIFSN);
	val &= ~(MT_WMM_AIFSN_MASK << FUNC2(qid));
	val |= params->aifs << FUNC2(qid);
	FUNC9(dev, MT_WMM_AIFSN, val);

	val = FUNC8(dev, MT_WMM_CWMIN);
	val &= ~(MT_WMM_CWMIN_MASK << FUNC4(qid));
	val |= cw_min << FUNC4(qid);
	FUNC9(dev, MT_WMM_CWMIN, val);

	val = FUNC8(dev, MT_WMM_CWMAX);
	val &= ~(MT_WMM_CWMAX_MASK << FUNC3(qid));
	val |= cw_max << FUNC3(qid);
	FUNC9(dev, MT_WMM_CWMAX, val);

	return 0;
}