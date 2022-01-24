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
struct cfg80211_chan_def {scalar_t__ width; } ;
struct TYPE_2__ {struct cfg80211_chan_def chandef; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_HW_RDD0 ; 
 int /*<<< orphan*/  MT_HW_RDD1 ; 
 int /*<<< orphan*/  MT_RX_SEL0 ; 
 scalar_t__ NL80211_CHAN_WIDTH_160 ; 
 scalar_t__ NL80211_CHAN_WIDTH_80P80 ; 
 int /*<<< orphan*/  RDD_CAC_START ; 
 int FUNC0 (struct mt7615_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct mt7615_dev *dev)
{
	struct cfg80211_chan_def *chandef = &dev->mt76.chandef;
	int err;

	/* start CAC */
	err = FUNC1(dev, RDD_CAC_START, MT_HW_RDD0,
				 MT_RX_SEL0, 0);
	if (err < 0)
		return err;

	/* TODO: DBDC support */

	err = FUNC0(dev, MT_HW_RDD0);
	if (err < 0)
		return err;

	if (chandef->width == NL80211_CHAN_WIDTH_160 ||
	    chandef->width == NL80211_CHAN_WIDTH_80P80) {
		err = FUNC0(dev, MT_HW_RDD1);
		if (err < 0)
			return err;
	}

	return 0;
}