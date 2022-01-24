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
struct wiphy {int dummy; } ;
struct lbs_private {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ NL80211_CHAN_NO_HT ; 
 scalar_t__ FUNC0 (struct cfg80211_chan_def*) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 struct lbs_private* FUNC2 (struct wiphy*) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy,
				       struct cfg80211_chan_def *chandef)
{
	struct lbs_private *priv = FUNC2(wiphy);
	int ret = -ENOTSUPP;

	if (FUNC0(chandef) != NL80211_CHAN_NO_HT)
		goto out;

	ret = FUNC1(priv, chandef->chan->hw_value);

 out:
	return ret;
}