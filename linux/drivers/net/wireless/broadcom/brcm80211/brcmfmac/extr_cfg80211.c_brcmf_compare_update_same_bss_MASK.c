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
struct brcmu_chan {scalar_t__ band; void* chspec; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {TYPE_1__ d11inf; } ;
struct brcmf_bss_info_le {scalar_t__ SSID_len; int flags; int /*<<< orphan*/  RSSI; int /*<<< orphan*/ * SSID; int /*<<< orphan*/  BSSID; int /*<<< orphan*/  chanspec; } ;
typedef  int s32 ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 int BRCMF_BSS_RSSI_ON_CHANNEL ; 
 scalar_t__ ETH_ALEN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmu_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmu_chan*) ; 

__attribute__((used)) static s32
FUNC4(struct brcmf_cfg80211_info *cfg,
			      struct brcmf_bss_info_le *bss,
			      struct brcmf_bss_info_le *bss_info_le)
{
	struct brcmu_chan ch_bss, ch_bss_info_le;

	ch_bss.chspec = FUNC0(bss->chanspec);
	cfg->d11inf.decchspec(&ch_bss);
	ch_bss_info_le.chspec = FUNC0(bss_info_le->chanspec);
	cfg->d11inf.decchspec(&ch_bss_info_le);

	if (!FUNC1(&bss_info_le->BSSID, &bss->BSSID, ETH_ALEN) &&
		ch_bss.band == ch_bss_info_le.band &&
		bss_info_le->SSID_len == bss->SSID_len &&
		!FUNC1(bss_info_le->SSID, bss->SSID, bss_info_le->SSID_len)) {
		if ((bss->flags & BRCMF_BSS_RSSI_ON_CHANNEL) ==
			(bss_info_le->flags & BRCMF_BSS_RSSI_ON_CHANNEL)) {
			s16 bss_rssi = FUNC0(bss->RSSI);
			s16 bss_info_rssi = FUNC0(bss_info_le->RSSI);

			/* preserve max RSSI if the measurements are
			* both on-channel or both off-channel
			*/
			if (bss_info_rssi > bss_rssi)
				bss->RSSI = bss_info_le->RSSI;
		} else if ((bss->flags & BRCMF_BSS_RSSI_ON_CHANNEL) &&
			(bss_info_le->flags & BRCMF_BSS_RSSI_ON_CHANNEL) == 0) {
			/* preserve the on-channel rssi measurement
			* if the new measurement is off channel
			*/
			bss->RSSI = bss_info_le->RSSI;
			bss->flags |= BRCMF_BSS_RSSI_ON_CHANNEL;
		}
		return 1;
	}
	return 0;
}