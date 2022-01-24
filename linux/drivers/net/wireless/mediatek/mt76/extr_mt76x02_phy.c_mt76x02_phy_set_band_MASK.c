#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_TX_BAND_CFG ; 
 int /*<<< orphan*/  MT_TX_BAND_CFG_2G ; 
 int /*<<< orphan*/  MT_TX_BAND_CFG_5G ; 
 int /*<<< orphan*/  MT_TX_BAND_CFG_UPPER_40M ; 
#define  NL80211_BAND_2GHZ 129 
#define  NL80211_BAND_5GHZ 128 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct mt76x02_dev *dev, int band,
			  bool primary_upper)
{
	switch (band) {
	case NL80211_BAND_2GHZ:
		FUNC2(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_2G);
		FUNC0(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_5G);
		break;
	case NL80211_BAND_5GHZ:
		FUNC0(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_2G);
		FUNC2(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_5G);
		break;
	}

	FUNC1(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_UPPER_40M,
		       primary_upper);
}