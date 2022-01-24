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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct brcmu_chan {scalar_t__ band; int /*<<< orphan*/  chspec; int /*<<< orphan*/  control_ch_num; } ;
struct brcmf_rx_mgmt_data {int /*<<< orphan*/  chanspec; } ;
struct afx_hdl {int /*<<< orphan*/  act_frm_scan; int /*<<< orphan*/  peer_chan; int /*<<< orphan*/  tx_dst_addr; } ;
struct brcmf_p2p_info {int /*<<< orphan*/  status; struct afx_hdl afx_hdl; } ;
struct brcmf_if {struct brcmf_cfg80211_vif* vif; TYPE_1__* drvr; } ;
struct brcmf_event_msg {int datalen; scalar_t__ bsscfgidx; int /*<<< orphan*/  addr; int /*<<< orphan*/  reason; int /*<<< orphan*/  event_code; } ;
struct brcmf_cfg80211_vif {int mgmt_rx_reg; int /*<<< orphan*/  wdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {TYPE_2__ d11inf; struct brcmf_p2p_info p2p; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_3__ {struct brcmf_cfg80211_info* config; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL ; 
 int /*<<< orphan*/  BRCMF_P2P_STATUS_GO_NEG_PHASE ; 
 scalar_t__ BRCMU_CHAN_BAND_2G ; 
 int IEEE80211_FCTL_STYPE ; 
 int IEEE80211_STYPE_PROBE_REQ ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  SCAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmu_chan*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

s32 FUNC9(struct brcmf_if *ifp,
					  const struct brcmf_event_msg *e,
					  void *data)
{
	struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
	struct brcmf_p2p_info *p2p = &cfg->p2p;
	struct afx_hdl *afx_hdl = &p2p->afx_hdl;
	struct brcmf_cfg80211_vif *vif = ifp->vif;
	struct brcmf_rx_mgmt_data *rxframe = (struct brcmf_rx_mgmt_data *)data;
	struct brcmu_chan ch;
	u8 *mgmt_frame;
	u32 mgmt_frame_len;
	s32 freq;
	u16 mgmt_type;

	FUNC2(INFO, "Enter: event %d reason %d\n", e->event_code,
		  e->reason);

	if (e->datalen < sizeof(*rxframe)) {
		FUNC2(SCAN, "Event data to small. Ignore\n");
		return 0;
	}

	ch.chspec = FUNC1(rxframe->chanspec);
	cfg->d11inf.decchspec(&ch);

	if (FUNC8(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, &p2p->status) &&
	    (FUNC5(afx_hdl->tx_dst_addr, e->addr))) {
		afx_hdl->peer_chan = ch.control_ch_num;
		FUNC2(INFO, "PROBE REQUEST: Peer found, channel=%d\n",
			  afx_hdl->peer_chan);
		FUNC4(&afx_hdl->act_frm_scan);
	}

	/* Firmware sends us two proberesponses for each idx one. At the */
	/* moment anything but bsscfgidx 0 is passed up to supplicant    */
	if (e->bsscfgidx == 0)
		return 0;

	/* Filter any P2P probe reqs arriving during the GO-NEG Phase */
	if (FUNC8(BRCMF_P2P_STATUS_GO_NEG_PHASE, &p2p->status)) {
		FUNC2(INFO, "Filtering P2P probe_req in GO-NEG phase\n");
		return 0;
	}

	/* Check if wpa_supplicant has registered for this frame */
	FUNC2(INFO, "vif->mgmt_rx_reg %04x\n", vif->mgmt_rx_reg);
	mgmt_type = (IEEE80211_STYPE_PROBE_REQ & IEEE80211_FCTL_STYPE) >> 4;
	if ((vif->mgmt_rx_reg & FUNC0(mgmt_type)) == 0)
		return 0;

	mgmt_frame = (u8 *)(rxframe + 1);
	mgmt_frame_len = e->datalen - sizeof(*rxframe);
	freq = FUNC6(ch.control_ch_num,
					      ch.band == BRCMU_CHAN_BAND_2G ?
					      NL80211_BAND_2GHZ :
					      NL80211_BAND_5GHZ);

	FUNC3(&vif->wdev, freq, 0, mgmt_frame, mgmt_frame_len, 0);

	FUNC2(INFO, "mgmt_frame_len (%d) , e->datalen (%d), chanspec (%04x), freq (%d)\n",
		  mgmt_frame_len, e->datalen, ch.chspec, freq);

	return 0;
}