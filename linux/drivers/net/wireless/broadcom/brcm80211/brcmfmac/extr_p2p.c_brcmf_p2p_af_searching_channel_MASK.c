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
struct afx_hdl {int is_active; scalar_t__ peer_chan; int is_listen; scalar_t__ my_listen_chan; int /*<<< orphan*/  act_frm_scan; int /*<<< orphan*/  afx_work; } ;
struct brcmf_p2p_info {int /*<<< orphan*/  status; TYPE_1__* bss_idx; struct afx_hdl afx_hdl; } ;
struct brcmf_cfg80211_vif {int /*<<< orphan*/  sme_state; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {struct brcmf_cfg80211_vif* vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTED ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTING ; 
 size_t P2PAPI_BSSCFG_PRIMARY ; 
 int /*<<< orphan*/  P2P_AF_FRM_SCAN_MAX_WAIT ; 
 scalar_t__ P2P_CHANNEL_SYNC_RETRY ; 
 int /*<<< orphan*/  P2P_DEFAULT_SLEEP_TIME_VSDB ; 
 scalar_t__ P2P_INVALID_CHANNEL ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC8(struct brcmf_p2p_info *p2p)
{
	struct afx_hdl *afx_hdl = &p2p->afx_hdl;
	struct brcmf_cfg80211_vif *pri_vif;
	s32 retry;

	FUNC0(TRACE, "Enter\n");

	pri_vif = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif;

	FUNC3(&afx_hdl->act_frm_scan);
	FUNC5(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, &p2p->status);
	afx_hdl->is_active = true;
	afx_hdl->peer_chan = P2P_INVALID_CHANNEL;

	/* Loop to wait until we find a peer's channel or the
	 * pending action frame tx is cancelled.
	 */
	retry = 0;
	while ((retry < P2P_CHANNEL_SYNC_RETRY) &&
	       (afx_hdl->peer_chan == P2P_INVALID_CHANNEL)) {
		afx_hdl->is_listen = false;
		FUNC0(TRACE, "Scheduling action frame for sending.. (%d)\n",
			  retry);
		/* search peer on peer's listen channel */
		FUNC4(&afx_hdl->afx_work);
		FUNC7(&afx_hdl->act_frm_scan,
					    P2P_AF_FRM_SCAN_MAX_WAIT);
		if ((afx_hdl->peer_chan != P2P_INVALID_CHANNEL) ||
		    (!FUNC6(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL,
			       &p2p->status)))
			break;

		if (afx_hdl->my_listen_chan) {
			FUNC0(TRACE, "Scheduling listen peer, channel=%d\n",
				  afx_hdl->my_listen_chan);
			/* listen on my listen channel */
			afx_hdl->is_listen = true;
			FUNC4(&afx_hdl->afx_work);
			FUNC7(&afx_hdl->act_frm_scan,
						    P2P_AF_FRM_SCAN_MAX_WAIT);
		}
		if ((afx_hdl->peer_chan != P2P_INVALID_CHANNEL) ||
		    (!FUNC6(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL,
			       &p2p->status)))
			break;
		retry++;

		/* if sta is connected or connecting, sleep for a while before
		 * retry af tx or finding a peer
		 */
		if (FUNC6(BRCMF_VIF_STATUS_CONNECTED, &pri_vif->sme_state) ||
		    FUNC6(BRCMF_VIF_STATUS_CONNECTING, &pri_vif->sme_state))
			FUNC2(P2P_DEFAULT_SLEEP_TIME_VSDB);
	}

	FUNC0(TRACE, "Completed search/listen peer_chan=%d\n",
		  afx_hdl->peer_chan);
	afx_hdl->is_active = false;

	FUNC1(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, &p2p->status);

	return afx_hdl->peer_chan;
}