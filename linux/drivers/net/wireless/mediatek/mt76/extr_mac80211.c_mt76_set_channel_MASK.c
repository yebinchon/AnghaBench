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
struct cfg80211_chan_def {int /*<<< orphan*/  chan; } ;
struct mt76_dev {int /*<<< orphan*/  main_chan; struct cfg80211_chan_def chandef; TYPE_2__* drv; int /*<<< orphan*/  tx_wait; struct ieee80211_hw* hw; } ;
struct mt76_channel_state {int dummy; } ;
struct TYPE_3__ {int flags; struct cfg80211_chan_def chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* update_survey ) (struct mt76_dev*) ;} ;

/* Variables and functions */
 int HZ ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mt76_channel_state*,int /*<<< orphan*/ ,int) ; 
 struct mt76_channel_state* FUNC1 (struct mt76_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

void FUNC5(struct mt76_dev *dev)
{
	struct ieee80211_hw *hw = dev->hw;
	struct cfg80211_chan_def *chandef = &hw->conf.chandef;
	struct mt76_channel_state *state;
	bool offchannel = hw->conf.flags & IEEE80211_CONF_OFFCHANNEL;
	int timeout = HZ / 5;

	FUNC4(dev->tx_wait, !FUNC2(dev), timeout);

	if (dev->drv->update_survey)
		dev->drv->update_survey(dev);

	dev->chandef = *chandef;

	if (!offchannel)
		dev->main_chan = chandef->chan;

	if (chandef->chan != dev->main_chan) {
		state = FUNC1(dev, chandef->chan);
		FUNC0(state, 0, sizeof(*state));
	}
}