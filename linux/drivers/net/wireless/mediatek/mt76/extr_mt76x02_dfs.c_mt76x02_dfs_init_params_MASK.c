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
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_4__ {scalar_t__ region; struct cfg80211_chan_def chandef; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFS ; 
 int /*<<< orphan*/  IBI ; 
 int IEEE80211_CHAN_RADAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_INT_GPTIMER ; 
 int /*<<< orphan*/  MT_INT_TIMER_EN ; 
 int /*<<< orphan*/  MT_INT_TIMER_EN_GP_TIMER_EN ; 
 scalar_t__ NL80211_DFS_UNSET ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 

void FUNC9(struct mt76x02_dev *dev)
{
	struct cfg80211_chan_def *chandef = &dev->mt76.chandef;

	if ((chandef->chan->flags & IEEE80211_CHAN_RADAR) &&
	    dev->mt76.region != NL80211_DFS_UNSET) {
		FUNC4(dev);
		FUNC5(dev);
		/* enable debug mode */
		FUNC6(dev, true);

		FUNC8(dev, MT_INT_GPTIMER);
		FUNC2(dev, MT_INT_TIMER_EN,
			       MT_INT_TIMER_EN_GP_TIMER_EN, 1);
	} else {
		/* disable hw detector */
		FUNC3(dev, FUNC0(DFS, 0), 0);
		/* clear detector status */
		FUNC3(dev, FUNC0(DFS, 1), 0xf);
		if (FUNC1(&dev->mt76) == 0x7610 ||
		    FUNC1(&dev->mt76) == 0x7630)
			FUNC3(dev, FUNC0(IBI, 11), 0xfde8081);
		else
			FUNC3(dev, FUNC0(IBI, 11), 0);

		FUNC7(dev, MT_INT_GPTIMER);
		FUNC2(dev, MT_INT_TIMER_EN,
			       MT_INT_TIMER_EN_GP_TIMER_EN, 0);
	}
}