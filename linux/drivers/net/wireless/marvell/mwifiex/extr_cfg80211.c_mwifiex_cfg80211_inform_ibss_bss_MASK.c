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
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_5__ {int /*<<< orphan*/  band; } ;
struct mwifiex_private {int /*<<< orphan*/  cfg_bssid; TYPE_3__ wdev; TYPE_2__ curr_bss_params; } ;
struct TYPE_4__ {int ssid_len; int /*<<< orphan*/  ssid; } ;
struct mwifiex_bss_info {int /*<<< orphan*/  bssid; int /*<<< orphan*/  bss_chan; TYPE_1__ ssid; } ;
struct ieee_types_header {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  CFG80211_BSS_FTYPE_UNKNOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_MAX_SSID_LEN ; 
 int /*<<< orphan*/  WLAN_CAPABILITY_IBSS ; 
 int WLAN_EID_SSID ; 
 struct cfg80211_bss* FUNC0 (int /*<<< orphan*/ ,struct ieee80211_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct ieee80211_channel* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mwifiex_private*,struct mwifiex_bss_info*) ; 

__attribute__((used)) static int FUNC8(struct mwifiex_private *priv)
{
	struct ieee80211_channel *chan;
	struct mwifiex_bss_info bss_info;
	struct cfg80211_bss *bss;
	int ie_len;
	u8 ie_buf[IEEE80211_MAX_SSID_LEN + sizeof(struct ieee_types_header)];
	enum nl80211_band band;

	if (FUNC7(priv, &bss_info))
		return -1;

	ie_buf[0] = WLAN_EID_SSID;
	ie_buf[1] = bss_info.ssid.ssid_len;

	FUNC5(&ie_buf[sizeof(struct ieee_types_header)],
	       &bss_info.ssid.ssid, bss_info.ssid.ssid_len);
	ie_len = ie_buf[1] + sizeof(struct ieee_types_header);

	band = FUNC6(priv->curr_bss_params.band);
	chan = FUNC4(priv->wdev.wiphy,
			FUNC3(bss_info.bss_chan,
						       band));

	bss = FUNC0(priv->wdev.wiphy, chan,
				  CFG80211_BSS_FTYPE_UNKNOWN,
				  bss_info.bssid, 0, WLAN_CAPABILITY_IBSS,
				  0, ie_buf, ie_len, 0, GFP_KERNEL);
	if (bss) {
		FUNC1(priv->wdev.wiphy, bss);
		FUNC2(priv->cfg_bssid, bss_info.bssid);
	}

	return 0;
}