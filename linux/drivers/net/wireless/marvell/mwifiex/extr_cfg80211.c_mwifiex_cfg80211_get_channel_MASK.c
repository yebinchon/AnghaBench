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
struct wireless_dev {int /*<<< orphan*/  netdev; } ;
struct wiphy {int dummy; } ;
struct mwifiex_bssdescriptor {int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  band; struct mwifiex_bssdescriptor bss_descriptor; } ;
struct cfg80211_chan_def {int dummy; } ;
struct mwifiex_private {scalar_t__ ht_param_present; TYPE_1__ curr_bss_params; scalar_t__ media_connected; struct cfg80211_chan_def bss_chandef; } ;
struct ieee80211_channel {int dummy; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ; 
 int NL80211_CHAN_NO_HT ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_chan_def*,struct ieee80211_channel*,int) ; 
 scalar_t__ FUNC2 (struct cfg80211_chan_def*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct ieee80211_channel* FUNC4 (struct wiphy*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mwifiex_private*) ; 
 struct mwifiex_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct wiphy *wiphy,
					struct wireless_dev *wdev,
					struct cfg80211_chan_def *chandef)
{
	struct mwifiex_private *priv = FUNC7(wdev->netdev);
	struct mwifiex_bssdescriptor *curr_bss;
	struct ieee80211_channel *chan;
	enum nl80211_channel_type chan_type;
	enum nl80211_band band;
	int freq;
	int ret = -ENODATA;

	if (FUNC0(priv) == MWIFIEX_BSS_ROLE_UAP &&
	    FUNC2(&priv->bss_chandef)) {
		*chandef = priv->bss_chandef;
		ret = 0;
	} else if (priv->media_connected) {
		curr_bss = &priv->curr_bss_params.bss_descriptor;
		band = FUNC5(priv->curr_bss_params.band);
		freq = FUNC3(curr_bss->channel, band);
		chan = FUNC4(wiphy, freq);

		if (priv->ht_param_present) {
			chan_type = FUNC6(priv);
			FUNC1(chandef, chan, chan_type);
		} else {
			FUNC1(chandef, chan,
						NL80211_CHAN_NO_HT);
		}
		ret = 0;
	}

	return ret;
}