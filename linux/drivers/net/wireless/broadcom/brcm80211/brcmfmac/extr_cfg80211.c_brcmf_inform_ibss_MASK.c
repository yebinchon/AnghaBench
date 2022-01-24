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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct net_device {int dummy; } ;
struct ieee80211_supported_band {int /*<<< orphan*/  band; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct brcmu_chan {int chspec; scalar_t__ band; int /*<<< orphan*/  control_ch_num; } ;
struct brcmf_pub {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {int /*<<< orphan*/  channel; TYPE_1__ d11inf; struct brcmf_pub* pub; } ;
struct brcmf_bss_info_le {int /*<<< orphan*/  RSSI; int /*<<< orphan*/  ie_length; int /*<<< orphan*/  ie_offset; int /*<<< orphan*/  beacon_period; int /*<<< orphan*/  capability; int /*<<< orphan*/  chanspec; } ;
typedef  int s32 ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_GET_BSS_INFO ; 
 scalar_t__ BRCMU_CHAN_BAND_2G ; 
 int /*<<< orphan*/  CFG80211_BSS_FTYPE_UNKNOWN ; 
 int /*<<< orphan*/  CONN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  WL_BSS_INFO_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cfg80211_bss* FUNC3 (struct wiphy*,struct ieee80211_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*,struct cfg80211_bss*) ; 
 struct wiphy* FUNC5 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_channel* FUNC8 (struct wiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcmu_chan*) ; 

__attribute__((used)) static s32 FUNC15(struct brcmf_cfg80211_info *cfg,
			     struct net_device *ndev, const u8 *bssid)
{
	struct wiphy *wiphy = FUNC5(cfg);
	struct brcmf_pub *drvr = cfg->pub;
	struct ieee80211_channel *notify_channel;
	struct brcmf_bss_info_le *bi = NULL;
	struct ieee80211_supported_band *band;
	struct cfg80211_bss *bss;
	struct brcmu_chan ch;
	u8 *buf = NULL;
	s32 err = 0;
	u32 freq;
	u16 notify_capability;
	u16 notify_interval;
	u8 *notify_ie;
	size_t notify_ielen;
	s32 notify_signal;

	FUNC1(TRACE, "Enter\n");

	buf = FUNC10(WL_BSS_INFO_MAX, GFP_KERNEL);
	if (buf == NULL) {
		err = -ENOMEM;
		goto CleanUp;
	}

	*(__le32 *)buf = FUNC6(WL_BSS_INFO_MAX);

	err = FUNC2(FUNC13(ndev), BRCMF_C_GET_BSS_INFO,
				     buf, WL_BSS_INFO_MAX);
	if (err) {
		FUNC0(drvr, "WLC_GET_BSS_INFO failed: %d\n", err);
		goto CleanUp;
	}

	bi = (struct brcmf_bss_info_le *)(buf + 4);

	ch.chspec = FUNC11(bi->chanspec);
	cfg->d11inf.decchspec(&ch);

	if (ch.band == BRCMU_CHAN_BAND_2G)
		band = wiphy->bands[NL80211_BAND_2GHZ];
	else
		band = wiphy->bands[NL80211_BAND_5GHZ];

	freq = FUNC7(ch.control_ch_num, band->band);
	cfg->channel = freq;
	notify_channel = FUNC8(wiphy, freq);

	notify_capability = FUNC11(bi->capability);
	notify_interval = FUNC11(bi->beacon_period);
	notify_ie = (u8 *)bi + FUNC11(bi->ie_offset);
	notify_ielen = FUNC12(bi->ie_length);
	notify_signal = (s16)FUNC11(bi->RSSI) * 100;

	FUNC1(CONN, "channel: %d(%d)\n", ch.control_ch_num, freq);
	FUNC1(CONN, "capability: %X\n", notify_capability);
	FUNC1(CONN, "beacon interval: %d\n", notify_interval);
	FUNC1(CONN, "signal: %d\n", notify_signal);

	bss = FUNC3(wiphy, notify_channel,
				  CFG80211_BSS_FTYPE_UNKNOWN, bssid, 0,
				  notify_capability, notify_interval,
				  notify_ie, notify_ielen, notify_signal,
				  GFP_KERNEL);

	if (!bss) {
		err = -ENOMEM;
		goto CleanUp;
	}

	FUNC4(wiphy, bss);

CleanUp:

	FUNC9(buf);

	FUNC1(TRACE, "Exit\n");

	return err;
}