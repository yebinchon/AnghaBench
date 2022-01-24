#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct brcmf_pub {struct brcmf_cfg80211_info* config; } ;
struct brcmf_pno_scanresults_le {int /*<<< orphan*/  count; } ;
struct brcmf_pno_net_info_le {scalar_t__ SSID_len; scalar_t__ channel; int /*<<< orphan*/  SSID; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_event_msg {int datalen; scalar_t__ event_code; } ;
struct TYPE_8__ {int nd_data_completed; int /*<<< orphan*/  nd_data_wait; TYPE_3__* nd; TYPE_2__* nd_info; } ;
struct brcmf_cfg80211_info {TYPE_4__ wowl; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_5__ {scalar_t__ ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_7__ {int n_channels; int /*<<< orphan*/ * channels; TYPE_1__ ssid; } ;
struct TYPE_6__ {int n_matches; TYPE_3__** matches; } ;

/* Variables and functions */
 scalar_t__ BRCMF_E_PFN_NET_LOST ; 
 scalar_t__ CH_MAX_2G_CHANNEL ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ IEEE80211_MAX_SSID_LEN ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct brcmf_pno_net_info_le* FUNC2 (struct brcmf_pno_scanresults_le*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32
FUNC7(struct brcmf_if *ifp, const struct brcmf_event_msg *e,
		      void *data)
{
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_cfg80211_info *cfg = drvr->config;
	struct brcmf_pno_scanresults_le *pfn_result;
	struct brcmf_pno_net_info_le *netinfo;

	FUNC1(SCAN, "Enter\n");

	if (e->datalen < (sizeof(*pfn_result) + sizeof(*netinfo))) {
		FUNC1(SCAN, "Event data to small. Ignore\n");
		return 0;
	}

	pfn_result = (struct brcmf_pno_scanresults_le *)data;

	if (e->event_code == BRCMF_E_PFN_NET_LOST) {
		FUNC1(SCAN, "PFN NET LOST event. Ignore\n");
		return 0;
	}

	if (FUNC4(pfn_result->count) < 1) {
		FUNC0(drvr, "Invalid result count, expected 1 (%d)\n",
			 FUNC4(pfn_result->count));
		return -EINVAL;
	}

	netinfo = FUNC2(pfn_result);
	if (netinfo->SSID_len > IEEE80211_MAX_SSID_LEN)
		netinfo->SSID_len = IEEE80211_MAX_SSID_LEN;
	FUNC5(cfg->wowl.nd->ssid.ssid, netinfo->SSID, netinfo->SSID_len);
	cfg->wowl.nd->ssid.ssid_len = netinfo->SSID_len;
	cfg->wowl.nd->n_channels = 1;
	cfg->wowl.nd->channels[0] =
		FUNC3(netinfo->channel,
			netinfo->channel <= CH_MAX_2G_CHANNEL ?
					NL80211_BAND_2GHZ : NL80211_BAND_5GHZ);
	cfg->wowl.nd_info->n_matches = 1;
	cfg->wowl.nd_info->matches[0] = cfg->wowl.nd;

	/* Inform (the resume task) that the net detect information was recvd */
	cfg->wowl.nd_data_completed = true;
	FUNC6(&cfg->wowl.nd_data_wait);

	return 0;
}