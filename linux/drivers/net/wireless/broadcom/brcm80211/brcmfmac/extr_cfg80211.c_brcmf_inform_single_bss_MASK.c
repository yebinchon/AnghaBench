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
typedef  scalar_t__ u16 ;
struct wiphy {int dummy; } ;
struct cfg80211_inform_bss {int signal; int /*<<< orphan*/  boottime_ns; int /*<<< orphan*/  scan_width; int /*<<< orphan*/  chan; } ;
struct cfg80211_bss {int dummy; } ;
struct brcmu_chan {int chspec; scalar_t__ control_ch_num; } ;
struct brcmf_pub {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {TYPE_1__ d11inf; struct brcmf_pub* pub; } ;
struct brcmf_bss_info_le {scalar_t__ ctl_ch; scalar_t__ BSSID; int /*<<< orphan*/  RSSI; int /*<<< orphan*/  ie_length; int /*<<< orphan*/  ie_offset; int /*<<< orphan*/  beacon_period; int /*<<< orphan*/  capability; int /*<<< orphan*/  chanspec; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int s16 ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  CFG80211_BSS_FTYPE_UNKNOWN ; 
 scalar_t__ CH_MAX_2G_CHANNEL ; 
 int /*<<< orphan*/  CONN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NL80211_BAND_2GHZ ; 
 int NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  NL80211_BSS_CHAN_WIDTH_20 ; 
 size_t WL_BSS_INFO_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 struct cfg80211_bss* FUNC2 (struct wiphy*,struct cfg80211_inform_bss*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,struct cfg80211_bss*) ; 
 struct wiphy* FUNC4 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcmu_chan*) ; 

__attribute__((used)) static s32 FUNC12(struct brcmf_cfg80211_info *cfg,
				   struct brcmf_bss_info_le *bi)
{
	struct wiphy *wiphy = FUNC4(cfg);
	struct brcmf_pub *drvr = cfg->pub;
	struct cfg80211_bss *bss;
	enum nl80211_band band;
	struct brcmu_chan ch;
	u16 channel;
	u32 freq;
	u16 notify_capability;
	u16 notify_interval;
	u8 *notify_ie;
	size_t notify_ielen;
	struct cfg80211_inform_bss bss_data = {};

	if (FUNC10(bi->length) > WL_BSS_INFO_MAX) {
		FUNC0(drvr, "Bss info is larger than buffer. Discarding\n");
		return 0;
	}

	if (!bi->ctl_ch) {
		ch.chspec = FUNC9(bi->chanspec);
		cfg->d11inf.decchspec(&ch);
		bi->ctl_ch = ch.control_ch_num;
	}
	channel = bi->ctl_ch;

	if (channel <= CH_MAX_2G_CHANNEL)
		band = NL80211_BAND_2GHZ;
	else
		band = NL80211_BAND_5GHZ;

	freq = FUNC5(channel, band);
	bss_data.chan = FUNC6(wiphy, freq);
	bss_data.scan_width = NL80211_BSS_CHAN_WIDTH_20;
	bss_data.boottime_ns = FUNC8(FUNC7());

	notify_capability = FUNC9(bi->capability);
	notify_interval = FUNC9(bi->beacon_period);
	notify_ie = (u8 *)bi + FUNC9(bi->ie_offset);
	notify_ielen = FUNC10(bi->ie_length);
	bss_data.signal = (s16)FUNC9(bi->RSSI) * 100;

	FUNC1(CONN, "bssid: %pM\n", bi->BSSID);
	FUNC1(CONN, "Channel: %d(%d)\n", channel, freq);
	FUNC1(CONN, "Capability: %X\n", notify_capability);
	FUNC1(CONN, "Beacon interval: %d\n", notify_interval);
	FUNC1(CONN, "Signal: %d\n", bss_data.signal);

	bss = FUNC2(wiphy, &bss_data,
				       CFG80211_BSS_FTYPE_UNKNOWN,
				       (const u8 *)bi->BSSID,
				       0, notify_capability,
				       notify_interval, notify_ie,
				       notify_ielen, GFP_KERNEL);

	if (!bss)
		return -ENOMEM;

	FUNC3(wiphy, bss);

	return 0;
}