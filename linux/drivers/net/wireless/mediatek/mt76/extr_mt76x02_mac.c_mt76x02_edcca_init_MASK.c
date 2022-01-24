#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_3__ {struct ieee80211_channel* chan; } ;
struct TYPE_4__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {int ed_monitor_learning; int /*<<< orphan*/  ed_time; TYPE_2__ mt76; scalar_t__ ed_monitor; scalar_t__ ed_silent; scalar_t__ ed_trigger; } ;
struct ieee80211_channel {scalar_t__ band; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_ED_CCA_TIMER ; 
 int /*<<< orphan*/  MT_TXOP_CTRL_CFG ; 
 int /*<<< orphan*/  MT_TXOP_ED_CCA_EN ; 
 int /*<<< orphan*/  MT_TXOP_HLDR_ET ; 
 int /*<<< orphan*/  MT_TXOP_HLDR_TX40M_BLK_EN ; 
 int /*<<< orphan*/  MT_TX_CFACK_EN ; 
 int /*<<< orphan*/  MT_TX_LINK_CFG ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 scalar_t__ FUNC2 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int) ; 

void FUNC10(struct mt76x02_dev *dev)
{
	dev->ed_trigger = 0;
	dev->ed_silent = 0;

	if (dev->ed_monitor) {
		struct ieee80211_channel *chan = dev->mt76.chandef.chan;
		u8 ed_th = chan->band == NL80211_BAND_5GHZ ? 0x0e : 0x20;

		FUNC4(dev, MT_TX_LINK_CFG, MT_TX_CFACK_EN);
		FUNC7(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);
		FUNC5(dev, FUNC1(AGC, 2), FUNC0(15, 0),
			 ed_th << 8 | ed_th);
		FUNC7(dev, MT_TXOP_HLDR_ET, MT_TXOP_HLDR_TX40M_BLK_EN);
	} else {
		FUNC7(dev, MT_TX_LINK_CFG, MT_TX_CFACK_EN);
		FUNC4(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);
		if (FUNC2(dev)) {
			FUNC8(dev, FUNC1(AGC, 2), 0x00007070);
			FUNC7(dev, MT_TXOP_HLDR_ET,
				 MT_TXOP_HLDR_TX40M_BLK_EN);
		} else {
			FUNC8(dev, FUNC1(AGC, 2), 0x003a6464);
			FUNC4(dev, MT_TXOP_HLDR_ET,
				   MT_TXOP_HLDR_TX40M_BLK_EN);
		}
	}
	FUNC9(dev, true);
	dev->ed_monitor_learning = true;

	/* clear previous CCA timer value */
	FUNC6(dev, MT_ED_CCA_TIMER);
	dev->ed_time = FUNC3();
}