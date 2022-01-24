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
struct TYPE_6__ {int /*<<< orphan*/  sband; } ;
struct mt76_dev {TYPE_3__ sband_2g; TYPE_2__* hw; } ;
struct ieee80211_rate {int dummy; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** bands; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  mt76_channels_2ghz ; 
 int FUNC1 (struct mt76_dev*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_rate*,int,int) ; 

__attribute__((used)) static int
FUNC2(struct mt76_dev *dev, struct ieee80211_rate *rates,
		   int n_rates)
{
	dev->hw->wiphy->bands[NL80211_BAND_2GHZ] = &dev->sband_2g.sband;

	return FUNC1(dev, &dev->sband_2g,
			       mt76_channels_2ghz,
			       FUNC0(mt76_channels_2ghz),
			       rates, n_rates, false);
}