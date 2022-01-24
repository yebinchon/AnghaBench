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
typedef  int u8 ;
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC ; 
 int /*<<< orphan*/  CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_BBP_AGC_R0_BW ; 
 int /*<<< orphan*/  MT_BBP_AGC_R0_CTRL_CHAN ; 
 int /*<<< orphan*/  MT_BBP_CORE_R1_BW ; 
 int /*<<< orphan*/  MT_BBP_TXBE_R0_CTRL_CHAN ; 
#define  NL80211_CHAN_WIDTH_40 129 
#define  NL80211_CHAN_WIDTH_80 128 
 int /*<<< orphan*/  TXBE ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct mt76x02_dev *dev, int width, u8 ctrl)
{
	int core_val, agc_val;

	switch (width) {
	case NL80211_CHAN_WIDTH_80:
		core_val = 3;
		agc_val = 7;
		break;
	case NL80211_CHAN_WIDTH_40:
		core_val = 2;
		agc_val = 3;
		break;
	default:
		core_val = 0;
		agc_val = 1;
		break;
	}

	FUNC1(dev, FUNC0(CORE, 1), MT_BBP_CORE_R1_BW, core_val);
	FUNC1(dev, FUNC0(AGC, 0), MT_BBP_AGC_R0_BW, agc_val);
	FUNC1(dev, FUNC0(AGC, 0), MT_BBP_AGC_R0_CTRL_CHAN, ctrl);
	FUNC1(dev, FUNC0(TXBE, 0), MT_BBP_TXBE_R0_CTRL_CHAN, ctrl);
}