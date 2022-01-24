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
struct brcmf_pub {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  center_freq; } ;
struct brcmf_p2p_info {scalar_t__ af_sent_channel; int wait_for_offchan_complete; int /*<<< orphan*/  status; int /*<<< orphan*/  send_af_done; TYPE_3__ remain_on_channel; int /*<<< orphan*/  af_tx_sent_jiffies; TYPE_2__* bss_idx; TYPE_1__* cfg; } ;
struct brcmf_fil_af_params_le {int /*<<< orphan*/  channel; } ;
struct brcmf_cfg80211_vif {int /*<<< orphan*/  ifp; } ;
typedef  int s32 ;
struct TYPE_5__ {struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_4__ {struct brcmf_pub* pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_P2P_STATUS_ACTION_TX_COMPLETED ; 
 int /*<<< orphan*/  BRCMF_P2P_STATUS_ACTION_TX_NOACK ; 
 int /*<<< orphan*/  BRCMF_P2P_STATUS_DISCOVER_LISTEN ; 
 int EIO ; 
 size_t P2PAPI_BSSCFG_DEVICE ; 
 int /*<<< orphan*/  P2P_AF_MAX_WAIT_TIME ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,struct brcmf_fil_af_params_le*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC9(struct brcmf_p2p_info *p2p,
				     struct brcmf_fil_af_params_le *af_params)
{
	struct brcmf_pub *drvr = p2p->cfg->pub;
	struct brcmf_cfg80211_vif *vif;
	s32 err = 0;
	s32 timeout = 0;

	FUNC1(TRACE, "Enter\n");

	FUNC6(&p2p->send_af_done);
	FUNC3(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, &p2p->status);
	FUNC3(BRCMF_P2P_STATUS_ACTION_TX_NOACK, &p2p->status);

	vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
	err = FUNC2(vif->ifp, "actframe", af_params,
					sizeof(*af_params));
	if (err) {
		FUNC0(drvr, " sending action frame has failed\n");
		goto exit;
	}

	p2p->af_sent_channel = FUNC5(af_params->channel);
	p2p->af_tx_sent_jiffies = jiffies;

	if (FUNC7(BRCMF_P2P_STATUS_DISCOVER_LISTEN, &p2p->status) &&
	    p2p->af_sent_channel ==
	    FUNC4(p2p->remain_on_channel.center_freq))
		p2p->wait_for_offchan_complete = false;
	else
		p2p->wait_for_offchan_complete = true;

	FUNC1(TRACE, "Waiting for %s tx completion event\n",
		  (p2p->wait_for_offchan_complete) ?
		   "off-channel" : "on-channel");

	timeout = FUNC8(&p2p->send_af_done,
					      P2P_AF_MAX_WAIT_TIME);

	if (FUNC7(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, &p2p->status)) {
		FUNC1(TRACE, "TX action frame operation is success\n");
	} else {
		err = -EIO;
		FUNC1(TRACE, "TX action frame operation has failed\n");
	}
	/* clear status bit for action tx */
	FUNC3(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, &p2p->status);
	FUNC3(BRCMF_P2P_STATUS_ACTION_TX_NOACK, &p2p->status);

exit:
	return err;
}